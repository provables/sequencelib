import Lean

open Lean Meta Elab

structure OEISTag where
  declName : Name
  module : Name
  oeisTag : String
  deriving BEq, Hashable

initialize oeisExt : SimplePersistentEnvExtension OEISTag (Std.HashSet OEISTag) ←
  registerSimplePersistentEnvExtension {
    addImportedFn := fun as => as.foldl Std.HashSet.insertMany {}
    addEntryFn := .insert
  }

def addOEISEntry {m : Type → Type} [MonadEnv m]
    (declName : Name) (module : Name) (oeisTag : String) : m Unit :=
  modifyEnv (oeisExt.addEntry ·
    { declName := declName, module := module, oeisTag := oeisTag })

syntax (name := OEIS) "OEIS" ":=" ident ("," "offset" ":=" num)?: attr

#check Lean.addDecl
#synth MonadLiftT CoreM AttrM
#check Declaration.defnDecl
#eval Name.mkStr `Foo "a"
#check Lean.setImplementedBy

initialize registerBuiltinAttribute {
    name := `OEIS
    descr := "Apply a OEIS tag to a definition."
    applicationTime := AttributeApplicationTime.beforeElaboration
    add := fun decl stx kind => do
      match stx with
      | `(attr|OEIS := $seq $[, offset := $n]?) => do
        let seqStr := seq.getId.toString
        let env ← getEnv
        let mod ← getMainModule
        let oldDoc := (← findDocString? env decl).getD ""
        let newDoc := [s!
          "[The On-Line Encyclopedia of Integer Sequences (OEIS): {seqStr}](https://oeis.org/{seqStr})",
          oldDoc
        ]
        addDocString decl <| "\n\n".intercalate <| newDoc.filter (· ≠ "")
        addOEISEntry decl mod seqStr
        let newDecl := Declaration.defnDecl {
          name := Name.mkStr decl "OEIS"
          levelParams := []
          type := mkConst `Nat
          value := mkNatLit <| (n.map <| fun x => x.getNat).getD 0
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        Lean.addAndCompile newDecl
      | _ => throwError "invalid OEIS attribute syntax"
  }

def getOEISTags (env : Environment) : Std.HashMap Name (Array OEISTag) :=
  let tags := oeisExt.getState env
  let result : Std.HashMap Name (Array OEISTag) := default
  tags.fold (fun map {declName, module, oeisTag} =>
    match map.get? module with
    | some tags =>
      map.insert module (tags.push {declName, module, oeisTag})
    | none =>
      map.insert module #[{declName, module, oeisTag}]
  ) result

def OEISTagToJson (tag : OEISTag) : Json :=
  Json.mkObj [
    ("declaration", Json.str <| tag.declName.toString),
    ("module", Json.str <| tag.module.toString),
    ("oeis_tag", tag.oeisTag),
  ]

def getOEISTagsAsJSON (env : Environment) : Json :=
  let map := getOEISTags env
  Json.mkObj <| map.toList.map fun (k, v) => (
    k.toString,
    Json.arr <| v.map OEISTagToJson
  )

def showOEISTags : Command.CommandElabM Unit := do
  let env ← getEnv
  let tags := getOEISTags env
  let mut msgs : Array MessageData := #[]
  for (mod, tagsForModule) in tags do
    for tag in tagsForModule do
      msgs := msgs.push
        m!"[OEIS {tag.oeisTag}]: {mod}: {tag.declName}"
  logInfo <| MessageData.joinSep msgs.toList "\n"

def jsonOEISTags : Command.CommandElabM Unit := do
  let env ← getEnv
  let json := getOEISTagsAsJSON env
  logInfo m!"{json}"

elab (name := oeisTags) "#oeis_tags" : command =>
  showOEISTags

elab (name := jsonOeisTags) "#oeis_tags_json" : command =>
  jsonOEISTags
