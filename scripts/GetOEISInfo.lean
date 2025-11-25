import Cli.Basic
import Sequencelib.Meta
import Sequencelib.Meta.ToJson
import Sequencelib.Meta.OEISRepo
import Lean

open Lean Elab Meta Cli

def VERSION := "0.0.1"

unsafe
def getEnvironment : IO Core.State := do
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let modules := #[`Sequencelib]
  let env ← importModules (modules.map ({module := ·})) {} (trustLevel := 1024) (loadExts := true)
  return {env}

def getContext : Core.Context := {fileName := "", fileMap := default}

unsafe
def toIO {α : Type} (x : MetaM α) : IO α := do
  Prod.fst <$> (MetaM.toIO · getContext (← getEnvironment)) x

unsafe
def info (limit : Option Nat) : IO Unit := do
  IO.println <| OEISInfoToJson <| ← toIO <| getOEISInfo limit

def augmentInfo (info : OEISInfo) : OEISRepoM OEISFullInfo := do
  let mut result : OEISFullInfo := ∅
  for (tag, info) in info do
    let repoInfo ← getOEISDataForTag tag
    result := result.insert tag { info := info, repoInfo := repoInfo}
  return result

unsafe
def fullInfo (limit : Option Nat := none) : OEISRepoM Json := do
  let info ← getOEISInfo limit
  return FullInfoToJson (← augmentInfo info)

unsafe
def run (p : Parsed) : IO UInt32 := do
  let l := p.flag? "limit" |>.map (·.as! Nat)
  if p.hasFlag "oeisdata" then
    IO.println "Requested oeisdata"
    let x ← toIO <| OEISRepoM.run' <| fullInfo l
    match x with
    | .ok r => do
      IO.println s!"{r}"
      return 0
    | .error e => do
      throw <| IO.Error.userError s!"Error: {e}"
  else
    info (limit := l)
    return 0

unsafe
def cmd : Cmd := `[Cli|
  "GetOEISInfo" VIA run; [VERSION]
  "Get info from OEIS tag."

  FLAGS:
    o, oeisdata;          "Include data from OEIS repository"
    l, limit : Nat;       "Process only a `limit` number of tags"
]

unsafe
def main (args : List String) : IO UInt32 := do
  cmd.validate args
