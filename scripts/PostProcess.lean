import Sequencelib.Meta.Process
import Lean

set_option maxHeartbeats 400000

open Lean Elab Meta Term

unsafe
def main : IO Unit := do
  let modules := #[`Sequencelib]
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules (modules.map ({module := ·})) {} (trustLevel := 1024) (loadExts := true)
  let ctx := {fileName := "", fileMap := default}
  let state := {env}
  let procState ← processStateFromJson "/Users/walter/Library/Caches/sequencelib/oeis_data.json"
  let procState := {procState with doValidation := true}
  let dirPath : System.FilePath := "Sequencelib/Synthetic"
  for entry in (← dirPath.readDir) do
    if (← entry.path.isDir) then
      continue
    let path := progressPath entry.path
    if (← path.pathExists) then
      IO.println s!"skipping {entry.path}"
      continue
    IO.println s!"Processing {entry.path}"
    let x := ProcessM.run (processPath entry.path) procState
    let y := TermElabM.run' x
    Prod.fst <$> (Meta.MetaM.toIO · ctx state) y
    IO.FS.writeFile path s!"validation := {procState.doValidation}"
