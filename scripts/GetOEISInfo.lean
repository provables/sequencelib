import Sequencelib.Meta
import Lean

open Lean Elab Meta

unsafe
def main : IO Unit := do
  let modules := #[`Sequencelib]
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules (modules.map ({module := ·})) {} (trustLevel := 1024) (loadExts := true)
  let ctx := {fileName := "", fileMap := default}
  let state := {env}
  Prod.fst <$> (Meta.MetaM.toIO · ctx state) do
    IO.println <| OEISInfoToJson (← getOEISInfo)
