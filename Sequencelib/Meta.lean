import Lean
import Qq
open Lean Meta Elab Qq

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

def postfixes : Std.HashMap Nat String := Std.HashMap.insertMany default #[
  (0, "zero"),
  (1, "one"),
  (2, "two"),
  (3, "three"),
  (4, "four"),
  (5, "five"),
  (6, "six"),
  (7, "seven"),
  (8, "eight"),
  (9, "nine"),
  (10, "ten")
]

def exampleCoreMatch (e : Expr) : MetaM (Option (Q(Nat) × Q(Nat) × Q(Nat → Nat))) := do
  match (← inferTypeQ e) with
  | ⟨1, ~q(Prop), ~q(Eq (($f : Nat → Nat) $z) $y)⟩  =>
    IO.println s!"y := {y}"
    if let some o := y.nat? then
      IO.println s!"o := {o}"
    else
      IO.println "no nat"
    let p := f.constName
    IO.println s!"p := {p}"
    return some (y, z, f)
  | _ => return none

def matchTheorem (e : Expr) (seq : Name) (n : Nat) : MetaM (Option Nat) := do
  match (← inferTypeQ e) with
  | ⟨1, ~q(Prop), ~q(Eq (($f : Nat → Nat) $a) $b)⟩ =>
    let some aValue := a.nat? | return none
    if f.constName != seq then
      -- The theorem is not using the right sequence
      return none
    if aValue != n then
      -- The theorem is not applying the sequence to the right term
      return none
    return b.nat?
  | _ => return none

def findTheorems (decl : Name) (off : Nat) : MetaM (Array (Name × Nat × Nat)) := do
  let env ← getEnv
  let mut result := #[]
  for i in [off:10] do
    let some p := postfixes[i]? | continue
    let n := Name.mkSimple <| s!"{decl.toString}_{p}"
    let some type := env.find? n |>.map (·.type) | continue
    -- let maybeType : Option Expr := do
    --   let p ← postfixes[i]?
    --   let n := Name.mkSimple <| s!"{decl.toString}_{p}"
    --   return  ← (← env.find? n).type
    -- let some type := maybeType | continue
    let some value ← matchTheorem type decl i | continue
    result := result.push (n, i, value)
  return result

def foo (n : Nat) := n

theorem foo_zero : foo 0 = 5 := by sorry
theorem foo_one : foo 1 = 6 := by sorry
-- def foo_one := "bar"
-- def foo_two (n : Nat) : Nat := n + 1

initialize registerBuiltinAttribute {
    name := `OEIS
    descr := "Apply a OEIS tag to a definition."
    applicationTime := AttributeApplicationTime.beforeElaboration
    add := fun decl stx kind => do
      match stx with
      | `(attr|OEIS := $seq $[, offset := $n]?) => do
        let seqStr := seq.getId.toString
        let offst := n.map (·.getNat) |>.getD 0
        let env ← getEnv
        let mod ← getMainModule
        let theorems ← MetaM.run' <| findTheorems decl offst
        let oldDoc := (← findDocString? env decl).getD ""
        let newDoc := [s!
          "[The On-Line Encyclopedia of Integer Sequences (OEIS): {seqStr}](https://oeis.org/{seqStr})",
          oldDoc
        ]
        addDocString decl <| "\n\n".intercalate <| newDoc.filter (· ≠ "")
        addOEISEntry decl mod seqStr
        let tagDecl := Declaration.defnDecl {
          name := Name.mkStr decl "OEIS"
          levelParams := []
          type := mkConst `String
          value := mkStrLit seqStr
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        let offsetDecl := Declaration.defnDecl {
          name := Name.mkStr decl "offset"
          levelParams := []
          type := mkConst `Nat
          value := mkNatLit offst
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        Lean.addAndCompile tagDecl
        Lean.addAndCompile offsetDecl
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
