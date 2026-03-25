import ImportGraph
import Sequencelib.Meta.Db
import Sequencelib.Meta.PopulateDb

open Lean Lean.Environment Elab Command Qq

def assert (v : Bool) (msg : String) : DbM Unit :=
  bif v then
    pure ()
  else
    throw <| .GeneralError msg

def testKeyword : DbM Unit := do
  let _ ← insertOrUpdateKeyword "foo" "descr" 0
  let (descr, type) ← getKeyword "foo"
  assert (descr == "descr") "wrong description"
  assert (type == 0) "wrong type"
  try
    let _ ← getKeyword "bar"
  catch
    | .NoResultsError _ => pure ()
    | e => throw e

def testInsertKeyword : DbM Unit := do
  let i ← insertOrUpdateKeyword "foo" "foo descr" 0
  assert (i == 1) "id should be 1"

def testUpdateKeyword : DbM Unit := do
  let i ← insertOrUpdateKeyword "foo" "foo1" 0
  let j ← insertOrUpdateKeyword "foo" "foo2" 1
  assert (i == j) "ids should be equal"
  let (d, t) ← getKeyword "foo"
  assert (d == "foo2") "wrong description"
  assert (t == 1) "wrong type"

def testInsertSequenceKeyword : DbM Unit := do
  insertSequenceKeyword 1 1
  insertSequenceKeyword 2 1
  insertSequenceKeyword 2 2
  insertSequenceKeyword 2 2

def testInsertDeclarationKeyword : DbM Unit := do
  insertDeclarationKeyword 1 1
  insertDeclarationKeyword 2 1
  insertDeclarationKeyword 2 2
  insertDeclarationKeyword 2 2

def testInsertSequence : DbM Unit := do
  let i ← insertOrUpdateSequence 5 1 0 "the number of divisors of n"
  assert (i == 1) "id should be 1"

def testInsertOrUpdateSequenceValue : DbM Unit := do
  let i ← insertOrUpdateSequenceValue 3 0 1
  assert (i == 1) "id should be 1"
  let i ← insertOrUpdateSequenceValue 4 0 1
  assert (i == 2) "id should be 2"
  let i ← insertOrUpdateSequenceValue 3 0 1
  assert (i == 1) "id should be 1"

def testInsertTheoremValue : DbM Unit := do
  insertTheoremValue 1 2 "mod1" "foo"
  let db ← DbM.get
  let s ← db sql! "SELECT * FROM theorem_value WHERE declaration_id = 1;"
  let c ← s.step
  assert c "should have at least one row"
  let x ← s.columnInt64 0
  let y ← s.columnInt64 1
  let z ← s.columnText 2
  let w ← s.columnText 3
  assert ((x, y, z, w) = (1, 2, "mod1", "foo")) "wrong values"

def testInsertTheoremEquivalence : DbM Unit := do
  insertTheoremEquivalence 1 2 "mod1" "foo"
  let db ← DbM.get
  let s ← db sql!
    "SELECT * FROM theorem_equivalence \
     WHERE declaration_left_id = 1 AND declaration_right_id = 2;"
  let c ← s.step
  assert c "should have at least one row"
  let x ← s.columnInt64 0
  let y ← s.columnInt64 1
  let z ← s.columnText 2
  let w ← s.columnText 3
  assert ((x, y, z, w) = (1, 2, "mod1", "foo")) "wrong values"

def testInsertOrUpdateDeclaration : DbM Unit := do
  let i ← insertOrUpdateDeclaration 1 "mod1" "foo" true
  assert (i == 1) "id should be 1"
  let i ← insertOrUpdateDeclaration 2 "mod2" "bar" false
  assert (i == 2) "id should be 2"
  let i ← insertOrUpdateDeclaration 3 "mod1" "foo" false
  assert (i == 1) "id should be 1"

def runTest (act : DbM Unit) : IO Unit := do
  IO.FS.withTempFile fun _ file => do
    let block := do
      ensureDb
      act
    DbError.toIO <| DbM.run' block "./sequencelib.sql" file

def runTests : CommandElabM Unit := do
  let env ← getEnv
  let testType ← liftTermElabM <| Term.elabTerm (← `(term|DbM Unit)) (some q(Type))
  for (n, c) in env.constants.toList do
    let some m := env.getModuleFor? n | throwError s!"no mod for {n}"
    if (m.toString.endsWith "Tests.TestDb")
        && (n.toString.startsWith "test")
        && (← liftTermElabM <| Lean.Meta.isDefEq c.type testType) then
      let cmd ← `(command|#eval runTest $(mkIdent n):ident)
      elabCommand cmd
