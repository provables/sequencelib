import Sequencelib.Meta.Defs

open Lean

def OEISDataPathVar := "OEISDATA_PATH"

structure OEISRepoContext where
  repo : System.FilePath

inductive OEISRepoException where
  | MissingEnvVar (var : String)
  deriving Repr

instance : ToString OEISRepoException where
  toString
  | .MissingEnvVar v => s!"Missing environment variable `{v}`"

abbrev OEISRepoM := ExceptT OEISRepoException (ReaderT OEISRepoContext MetaM)

def OEISRepoM.run {α : Type} (x : OEISRepoM α) (repo : System.FilePath) :
    MetaM (Except OEISRepoException α) :=
  ReaderT.run x ⟨repo⟩

def OEISRepoM.run' {α : Type} (x : OEISRepoM α) : MetaM (Except OEISRepoException α) := do
  match (← IO.getEnv OEISDataPathVar) with
  | some p => OEISRepoM.run x p
  | none => return .error <| .MissingEnvVar OEISDataPathVar

def blockOf (tag : Tag) : String := tag.take 4

def getDescription (line : String) : String := line.drop 11
def getKeywords (line : String) : List String := (line.drop 11).splitOn ","

def getOEISDataForTag (tag : Tag) : OEISRepoM OEISData := do
  let p := (← read).repo
  let seq := p / "seq" / (blockOf tag) / s!"{tag}.seq"
  let d ← IO.FS.readFile seq
  let mut data : OEISData := default
  for line in d.splitOn "\n" do
    if line.startsWith "%N" then
      data := {data with description := getDescription line}
    if line.startsWith "%K" then
      data := {data with keywords := getKeywords line}
  return data
