/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira
-/
import Lean
import Qq
open Lean Meta Elab Qq

structure OEISTag where
  declName : Name
  module : Name
  oeisTag : String
  deriving BEq, Hashable, Repr

structure Thm where
  thmName : Name
  declName : Name
  index : Nat
  value : Nat
  deriving BEq, Hashable, Repr

abbrev OEISInfo := Std.HashMap Name (Std.HashMap String (Std.HashMap Name (Array Thm)))

def addOEISInfo (info : OEISInfo) (tag : OEISTag) : OEISInfo :=
  let tags := info.getD tag.module ∅
  let decls := tags.getD tag.oeisTag ∅ |>.insertIfNew tag.declName ∅
  let tags := tags.insert tag.oeisTag decls
  info.insert tag.module tags

def addOEISInfoFn (as : Array (Array OEISTag)) : OEISInfo :=
  let result := ∅
  as.foldl (fun info tags =>
    tags.foldl (fun info_inner tag =>
      addOEISInfo info_inner tag
    ) info
  ) result

initialize oeisExt : SimplePersistentEnvExtension OEISTag OEISInfo ←
  registerSimplePersistentEnvExtension {
    addImportedFn := addOEISInfoFn
    addEntryFn := addOEISInfo
  }

def addOEISEntry {m : Type → Type} [MonadEnv m]
    (declName : Name) (module : Name) (oeisTag : String) : m Unit :=
  modifyEnv (oeisExt.addEntry ·
    { declName := declName, module := module, oeisTag := oeisTag })

syntax (name := OEIS) "OEIS" ":=" ident ("," "offset" ":=" num)?: attr

def suffixes : Std.HashMap Nat String := Std.HashMap.insertMany default #[
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

def findTheorems (decl : Name) (off : Nat := 0) : MetaM (Array Thm) := do
  let env ← getEnv
  let mut result := #[]
  for i in [off:10] do
    let some p := suffixes[i]? | continue
    let n := Name.appendAfter decl s!"_{p}"
    let some type := env.find? n |>.map (·.type) | continue
    let some value ← matchTheorem type decl i | continue
    result := result.push ⟨n, decl, i, value⟩
  return result

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

def getOEISInfo : MetaM OEISInfo := do
  let env ← getEnv
  let info := oeisExt.getState env
  return .ofList (← info.toList.mapM (fun (mod, tagsForMod) => do
    return (mod, .ofList <| ← tagsForMod.toList.mapM (fun (tag, declsForTag) => do
      return (tag, .ofList <| ← declsForTag.toList.mapM (fun (decl, thmsForDecl) => do
        return (decl, thmsForDecl.append (← findTheorems decl))
      ))
    ))
  ))

def showOEISInfo : Command.CommandElabM Unit := do
  let info ← Command.liftTermElabM getOEISInfo
  let mut msgs := #[]
  for (mod, tagsForMod) in info do
    msgs := msgs.push m!"Module: {mod}"
    for (tag, declsForTag) in tagsForMod do
      msgs := msgs.push m!".. tag: {tag}"
      for (decl, thmsForDecl) in declsForTag do
        msgs := msgs.push m!".... {decl}"
        for thm in thmsForDecl do
          msgs := msgs.push m!"...... {repr thm}"
  logInfo <| MessageData.joinSep msgs.toList "\n"

def OEISTagToJson (tag : OEISTag) : Json :=
  Json.mkObj [
    ("declaration", Json.str <| tag.declName.toString),
    ("module", Json.str <| tag.module.toString),
    ("oeis_tag", tag.oeisTag),
  ]

def ThmToJson (thm : Thm) : Json :=
  Json.mkObj [
    ("declaration", Json.str thm.declName.toString),
    ("theorem", Json.str thm.thmName.toString),
    ("index", Json.num thm.index),
    ("value", Json.num thm.value)
  ]

def OEISInfoToJson (info : OEISInfo) : Json :=
  Json.mkObj <| info.toList.map (fun (mod, tagsForMod) =>
    (mod.toString, Json.mkObj <| tagsForMod.toList.map (fun (tag, declsForTag) =>
      (tag, Json.mkObj <| declsForTag.toList.map (fun (decl, thmsForDecl) =>
        (decl.toString, Json.mkObj <| thmsForDecl.toList.map (fun thm =>
          (thm.thmName.toString, ThmToJson thm)
        ))
      ))
    ))
  )

elab (name := oeisInfo) "#oeis_info" : command =>
  showOEISInfo

elab (name := oeisTags) "#oeis_info_json" : command => do
  let info ← Command.liftTermElabM getOEISInfo
  let result := OEISInfoToJson info
  logInfo m!"{result}"
