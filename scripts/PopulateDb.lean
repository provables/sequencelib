import Sequencelib.Meta.PopulateDb

open Lean Elab Meta

unsafe
def main : IO Unit := do
  let modules := #[`Sequencelib.Meta.PopulateDb]
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules (modules.map ({module := ·})) {} (trustLevel := 1024) (loadExts := true)
  DbM.fromEnvToIO <| populateDb env default "/Users/walter/repos/oeisdata"
