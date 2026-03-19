import Sequencelib.Meta.Db
import Sequencelib.Meta.PopulateDb

open Lean

def testInsert : DbM Int64 := do
  insertOrUpdateKeyword "foo" "foo descr" 0

def runTest {α : Type} [ToString α] (act : DbM α) : IO Unit := do
  let (_, file) ← IO.FS.createTempFile
  let block := do
    ensureDb
    act
  let i ← DbError.toIO <| DbM.run' block "./sequencelib.sql" file
  dbg_trace i

/--
info: 1
-/
#guard_msgs in
#eval runTest testInsert
