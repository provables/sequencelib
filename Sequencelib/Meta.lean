/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira
-/
import Lean
import Qq
import Batteries
import Mathlib
open Lean Meta Elab Qq

structure OEISTag where
  declName : Name
  module : Name
  oeisTag : String
  deriving BEq, Hashable, Repr

inductive Thm : Type where
  | Value (thmName : Name) (declName : Name) (index : Nat) (value : Nat) : Thm
  | Equiv (thmName : Name) (seq1 : Name) (seq2 : Name) : Thm
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
    (0, "zero"), (1, "one"), (2, "two"), (3, "three"), (4, "four"),
    (5, "five"), (6, "six"), (7, "seven"), (8, "eight"), (9, "nine"),
    (10, "ten"), (11, "eleven"), (12, "twelve"), (13, "thirteen"), (14, "fourteen"),
    (15, "fifteen"), (16, "sixteen"), (17, "seventeen"), (18, "eighteen"), (19, "nineteen"),
    (20, "twenty")
]

def matchValueTheorem (e : Expr) (seq : Name) (n : Nat) : MetaM (Option Nat) := do
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

def matchEquivTheorem (e : Expr) (name1 : Name) (name2 : Name) : MetaM (Option Unit) := do
  let ⟨_, _, z⟩ ← forallMetaTelescope e
  match (← inferTypeQ z) with
  | ⟨1, ~q(Prop), ~q(Eq ($f : Nat → Nat) ($g : Nat → Nat))⟩ => do
    pure <| if f.constName == name1 && g.constName == name2 then
      some ()
    else
      none
  | _ => pure none

def findValueTheorems (decl : Name) (off : Nat := 0) : MetaM (Array Thm) := do
  let env ← getEnv
  let mut result := #[]
  for i in [off:10] do
    let some p := suffixes[i]? | continue
    let n := Name.appendAfter decl s!"_{p}"
    let some type := env.find? n |>.map (·.type) | continue
    let some value ← matchValueTheorem type decl i | continue
    result := result.push <| .Value n decl i value
  return result

def findEquivTheorems (decl : Name) (decls : List Name) : MetaM (Array Thm) := do
  let env ← getEnv
  let mut result := #[]
  for decl2 in decls do
    let n := Name.appendAfter decl s!"_eq_{decl2.getString!}"
    let some type := env.find? n |>.map (·.type) | continue
    let some _ ← matchEquivTheorem type decl decl2 | continue
    result := result.push <| Thm.Equiv n decl decl2
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
        let tagDeclName := Name.mkStr decl "OEIS"
        let tagDecl := Declaration.defnDecl {
          name := tagDeclName
          levelParams := []
          type := mkConst `String
          value := mkStrLit seqStr
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        addDocString tagDeclName "OEIS Identifier"
        let offsetDeclName := Name.mkStr decl "offset"
        let offsetDecl := Declaration.defnDecl {
          name := offsetDeclName
          levelParams := []
          type := mkConst `Nat
          value := mkNatLit offst
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        addDocString offsetDeclName "OEIS sequence offset"
        Lean.addAndCompile tagDecl
        Lean.addAndCompile offsetDecl
      | _ => throwError "invalid OEIS attribute syntax"
  }

def getOEISInfo : MetaM OEISInfo := do
  let env ← getEnv
  let info := oeisExt.getState env
  return .ofList (← info.toList.mapM (fun (mod, tagsForMod) => do
    return (mod, .ofList <| ← tagsForMod.toList.mapM (fun (tag, declsForTag) => do
      -- find things like d1_eq_d2 for d1, d2 in declsForTag
      -- append to thmsForDecl
      return (tag, .ofList <| ← declsForTag.toList.mapM (fun (decl, thmsForDecl) => do
        return (
          decl,
          thmsForDecl.append (← findValueTheorems decl)
            |>.append (← findEquivTheorems decl declsForTag.keys))
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
  match thm with
  | .Value thmName declName index value =>
    Json.mkObj [
      ("type", "value"),
      ("declaration", Json.str declName.toString),
      ("theorem", Json.str thmName.toString),
      ("index", Json.num index),
      ("value", Json.num value)
    ]
  | .Equiv thmName seq1 seq2 =>
    Json.mkObj [
      ("type", "equiv"),
      ("theorem", thmName.toString),
      ("seq1", seq1.toString),
      ("seq2", seq2.toString)
    ]

def ThmToName (thm : Thm) : Name :=
  match thm with
  | .Value n _ _ _ => n
  | .Equiv n _ _ => n

def OEISInfoToJson (info : OEISInfo) : Json :=
  Json.mkObj <| info.toList.map (fun (mod, tagsForMod) =>
    (mod.toString, Json.mkObj <| tagsForMod.toList.map (fun (tag, declsForTag) =>
      (tag, Json.mkObj <| declsForTag.toList.map (fun (decl, thmsForDecl) =>
        (decl.toString, Json.mkObj <| thmsForDecl.toList.map (fun thm =>
          (ThmToName thm |>.toString, ThmToJson thm)
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
