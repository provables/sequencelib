import Cli.Basic
import Sequencelib.Meta.PopulateDb

open Lean Elab Meta Cli

def VERSION := "0.1.0"

unsafe
def run (_ : Parsed) : IO UInt32 := do
  let modules := #[`Sequencelib.Meta.PopulateDb]
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules (modules.map ({module := ·})) {} (trustLevel := 1024) (loadExts := true)
  let some oeisdata ← IO.getEnv "SEQUENCELIB_OEISDATA" |
    throw <| .userError "missing `SEQUENCELIB_OEISDATA` environment variable"
  let tags ← DbM.fromEnvToIO <| populateDb env default oeisdata
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
]

unsafe
def main (args : List String) : IO UInt32 := do
  cmd.validate args
