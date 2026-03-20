import Sequencelib.Meta.OEISTag
import Sequencelib.Meta.Db

abbrev DbId := UInt64

-- TODO: see if we can populate the database from here
def populateDb (tags : TagsWithInfo) (oeisData : System.FilePath) : DbM Unit := do
  sorry

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
