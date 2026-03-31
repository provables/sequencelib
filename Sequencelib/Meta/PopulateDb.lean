import Sequencelib.Meta.OEISTag
import Sequencelib.Meta.Db
import Sequencelib.Meta.OEISRepo

open Lean

abbrev DbId := UInt64

-- #eval do
--   let x ← IO.FS.readFile <| ("/Users/walter/repos/oeisdata" : System.FilePath) / "seq/A000/A000001.seq"
--   dbg_trace x

-- TODO: see if we can populate the database from here
def populateDb (env : Environment) (tags : TagsWithInfo) (oeisData : System.FilePath) :
    DbM Unit := do
  let x ← .ofExcept <| (← fileToOEISRepoItem env (oeisData / "seq/A000/A000001.seq")).mapError DbError.OEISRepoParseError
  IO.println s!"RepoItem: {repr x}"

def getKeyword (keyword : String) : DbM (String × Int64) := do
  let db ← DbM.get
  let s ← db.prepare "SELECT description, type FROM keyword WHERE keyword = ?;"
  s.bindText 1 keyword
  let hasRow ← s.step
  if not hasRow then
    throw <| .NoResultsError (← s.expandedSql)
  let descr ← s.columnText 0
  let type ← s.columnInt64 1
  return (descr, type)

def insertOrUpdateKeyword (keyword description : String) (type : Int64) : DbM Int64 := do
  let db ← DbM.get
  let d ← db.transaction do
    let s ← db.prepare "SELECT keyword_id FROM keyword WHERE keyword = ?;"
    s.bindText 1 keyword
    let hasRow ← s.step
    if hasRow then
      -- update
      let i ← s.columnInt64 0
      let upd ← db.prepare "UPDATE keyword SET keyword = ?, description = ?, type = ? WHERE keyword_id = ?;"
      upd.bindText 1 keyword
      upd.bindText 2 description
      upd.bindInt64 3 type
      upd.bindInt64 4 i
      upd.exec
      pure i
    else
      -- insert
      let ins ← db.prepare "INSERT INTO keyword (keyword, description, type) VALUES (?, ?, ?);"
      ins.bindText 1 keyword
      ins.bindText 2 description
      ins.bindInt64 3 type
      ins.exec
      db.lastInsertRowId
  return d

def insertOrUpdateSequence (tag off codomain: Int64) (description : String) : DbM Int64 := do
  let db ← DbM.get
  let d ← db.transaction do
    let s ← db.prepare "SELECT sequence_id FROM sequence WHERE tag = ?;"
    s.bindInt64 1 tag
    let hasRow ← s.step
    if hasRow then
      -- update
      let sid ← s.columnInt64 0
      let upd ← db.prepare "UPDATE sequence SET tag = ?, description = ?, offset = ?, codomain = ?, sequence_id = ? WHERE tag = ?;"
      upd.bindInt64 1 tag
      upd.bindText 2 description
      upd.bindInt64 3 off
      upd.bindInt64 4 codomain
      upd.bindInt64 5 sid
      upd.bindInt64 6 tag
      upd.exec
      pure sid
    else
     -- insert
      let ins ← db.prepare "INSERT INTO sequence (tag, description, offset, codomain) VALUES (?, ?, ?, ?);"
      ins.bindInt64 1 tag
      ins.bindText 2 description
      ins.bindInt64 3 off
      ins.bindInt64 4 codomain
      ins.exec
      db.lastInsertRowId
  return d

def insertOrUpdateDeclaration (sequenceId : Int64) (module name : String) (computable : Bool) :
    DbM Int64 := do
  let db ← DbM.get
  db.transaction do
    let s ← db sql!
      "SELECT declaration_id FROM declaration WHERE module = {module} AND name = {name};"
    if (← s.step) then
      let did ← s.columnInt64 0
      let upd ← db sql!
        "UPDATE
          declaration
         SET
          sequence_id = {sequenceId}, module = {module},
          name = {name}, computable = {computable}
         WHERE
          declaration_id = {did};"
      upd.exec
      pure did
    else
      let ins ← db sql!
        "INSERT INTO declaration (sequence_id, module, name, computable)
         VALUES ({sequenceId}, {module}, {name}, {computable});"
      ins.exec
      db.lastInsertRowId

def insertSequenceKeyword (sequenceId keywordId : Int64) : DbM Unit := do
  let db ← DbM.get
  let s ← db sql! "INSERT OR IGNORE INTO sequence_keyword (sequence_id, keyword_id) VALUES ({sequenceId}, {keywordId});"
  s.exec

def insertDeclarationKeyword (declarationId keywordId : Int64) : DbM Unit := do
  let db ← DbM.get
  let s ← db sql!
    "INSERT OR IGNORE INTO sequence_keyword (sequence_id, keyword_id) \
     VALUES ({declarationId}, {keywordId});"
  s.exec

def insertOrUpdateSequenceValue (sequenceId n value : Int64) : DbM Int64 := do
  let db ← DbM.get
  db.transaction do
    let s ← db sql!
      "SELECT sequence_value_id FROM sequence_value WHERE \
       sequence_id = {sequenceId} AND n = {n} AND value = {value};"
    if (← s.step) then
      s.columnInt64 0
    else
      let ins ← db sql!
        "INSERT INTO sequence_value (sequence_id, n, value) \
         VALUES ({sequenceId}, {n}, {value});"
      ins.exec
      db.lastInsertRowId

def insertTheoremValue (declarationId sequenceValueId : Int64) (module name : String) :
    DbM Unit := do
  let db ← DbM.get
  db.transaction do
    let s ← db sql!
      "INSERT INTO theorem_value (declaration_id, sequence_value_id, module, name) \
       VALUES ({declarationId}, {sequenceValueId}, {module}, {name});"
    s.exec

def insertTheoremEquivalence (declarationLeftId declarationRightId : Int64) (module name : String) :
    DbM Unit := do
  let db ← DbM.get
  db.transaction do
    let s ← db sql!
      "INSERT INTO theorem_equivalence (declaration_left_id, declaration_right_id, module, name) \
       VALUES ({declarationLeftId}, {declarationRightId}, {module}, {name});"
    s.exec
