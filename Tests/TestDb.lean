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
  let _ ← insertSequenceKeyword 1 1
  let _ ← insertSequenceKeyword 2 1
  let _ ← insertSequenceKeyword 2 2
  try
    let _ ← insertSequenceKeyword 2 2
  catch
    | .InnerIOError _ => pure ()
    | e => throw e

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
