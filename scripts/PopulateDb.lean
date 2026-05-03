import Cli.Basic
import Sequencelib.Meta.PopulateDb
import Sequencelib.Meta.OEISInfo

open Lean Elab Meta Cli

def VERSION := "0.2.0"

def getModules (mods : String) : Array Name :=
  if mods.trimAscii == "" then
    #[]
  else
    mods.split ',' |>.map (·.trimAscii.toName) |>.toArray

unsafe
def run (p : Parsed) : IO UInt32 := do
  let modules := #[`Sequencelib.Meta.PopulateDb]
    ++ (p.flag? "modules" |>.map (·.as! String) |>.map getModules |>.getD #[])
  --let modules := #[`Sequencelib.Meta.PopulateDb, `Sequencelib.FiniteGroups]
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules (modules.map ({module := ·})) {} (trustLevel := 1024) (loadExts := true)
  let some oeisdata ← IO.getEnv "SEQUENCELIB_OEISDATA" |
    throw <| .userError "missing `SEQUENCELIB_OEISDATA` environment variable"
  let ctx := {fileName := default, fileMap := default}
  let state := {env}
  let tagsWithInfo ← Prod.fst <$> (Meta.MetaM.toIO · ctx state) getTagsWithInfo
  let tags ← DbM.fromEnvToIO <| populateDb env tagsWithInfo oeisdata
  IO.println s!"Ok: {tags.size} entries processed."
  return 0

unsafe
def cmd : Cmd := `[Cli|
  "populatedb" VIA run; [VERSION]
  "Populate Sequencelib Database.

  Environment variables:

  SEQUENCELIB_SCHEMA:   database schema [default: ./sequencelib.sql]
  SEQUENCELIB_DATABASE: database file   [default: ./sequencelib.db]
  SEQUENCELIB_OEISDATA: path to OEIS repository"

  FLAGS:
    m, modules : String;        "List of modules to process (comma separated)"
]

unsafe
def main (args : List String) : IO UInt32 := do
  cmd.validate args
