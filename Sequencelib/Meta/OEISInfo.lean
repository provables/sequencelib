/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira
-/
import Lean
import Qq
import Batteries
import Sequencelib.Meta.OEISTag
open Lean Meta Elab Qq

/-- Maximum index to search for theorems about values of sequences. -/
def MaxValue := 20

def suffixes : Std.HashMap Nat String := Std.HashMap.insertMany default #[
    (0, "zero"), (1, "one"), (2, "two"), (3, "three"), (4, "four"),
    (5, "five"), (6, "six"), (7, "seven"), (8, "eight"), (9, "nine"),
    (10, "ten"), (11, "eleven"), (12, "twelve"), (13, "thirteen"), (14, "fourteen"),
    (15, "fifteen"), (16, "sixteen"), (17, "seventeen"), (18, "eighteen"), (19, "nineteen"),
    (20, "twenty")
]

def matchValueTheorem (e : Expr) (seq : Name) (n : Nat) : MetaM (Option Nat) := do
  let ⟨_, _, z⟩ ← forallMetaTelescope e
  let t ← match z with
  | .app (.app (.app (.const ``Eq _) (.const ``Nat _)) (.app (.const f _) (idx : Q(Nat))))
        (value : Q(Nat)) =>
    if f ≠ seq then
      return none
    let some i := idx.nat? | return none
    if i ≠ n then
      return none
    return value.nat?
  | _ => pure none

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
  for i in [off:MaxValue + 1] do
    let some p := suffixes[i]? | continue
    let n := Name.appendAfter decl s!"_{p}"
    let some type := env.find? n |>.map (·.type) | continue
    let some value ← matchValueTheorem type decl i | continue
    result := result.push <| .Value n decl i value
  return result

def findEquivTheorems (decl : Name) (decls : Array Name) : MetaM (Array Thm) := do
  let env ← getEnv
  let mut result := #[]
  for decl2 in decls do
    let n := Name.appendAfter decl s!"_eq_{decl2.getString!}"
    let some type := env.find? n |>.map (·.type) | continue
    let some _ ← matchEquivTheorem type decl decl2 | continue
    result := result.push <| Thm.Equiv n decl decl2
  return result

def getOEISInfo : MetaM OEISInfo := do
  let env ← getEnv
  let info := oeisExt.getState env
  return .ofList (← info.toList.mapM (fun (tag, oeisTag) => do
    return (tag, ⟨
      tag,
      ← oeisTag.sequences.mapM (fun seq => do
        let new_thms := (← findValueTheorems seq.definition)
          |>.append (← findEquivTheorems seq.definition <| oeisTag.sequences.map (·.definition))
        let isComputable := !isNoncomputable env seq.definition
        return {seq with theorems := seq.theorems.append new_thms, isComputable := isComputable}
      ),
      oeisTag.offset
    ⟩)
  ))

def OEISInfoToMod (info : OEISInfo) :
    Std.HashMap Name (Std.HashMap Tag (Nat × Std.HashMap Name (Bool × Array Thm))) :=
  info.fold (fun acc tag oeisTag =>
    let mod := oeisTag.sequences[0]? |>.map (·.module) |>.getD `no_module
    let tagsForMod := acc.get? mod |>.getD ∅
    let declsForTagWithThms := oeisTag.sequences.foldl (fun accs seq =>
      ⟨seq.offset, accs.2.insert seq.definition ⟨seq.isComputable, seq.theorems⟩⟩
    ) <| tagsForMod.get? tag |>.getD ⟨0, ∅⟩
    acc.insert mod <| tagsForMod.insert tag declsForTagWithThms
  ) ∅

def showOEISInfo : Command.CommandElabM Unit := do
  let info ← Command.liftTermElabM getOEISInfo
  let mut msgs := #[]
  for (mod, tagsForMod) in OEISInfoToMod info do
    msgs := msgs.push m!"Module: {mod}"
    for (tag, declsForTag) in tagsForMod do
      msgs := msgs.push m!".. tag: {tag}, offset: {declsForTag.1}"
      for (decl, ⟨isComputable, thmsForDecl⟩) in declsForTag.2 do
        let computable := if isComputable then "computable" else "noncomputable"
        msgs := msgs.push m!".... [{computable}] {decl}"
        for thm in thmsForDecl do
          msgs := msgs.push m!"...... {repr thm}"
  logInfo <| MessageData.joinSep msgs.toList "\n"

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
  Json.mkObj <| OEISInfoToMod info |>.toList.map (fun (mod, tagsForMod) =>
    (mod.toString, Json.mkObj <| tagsForMod.toList.map (fun (tag, ⟨offst, declsForTag⟩) =>
      (tag, Json.mkObj [
        ("offset", Json.num offst),
        ("decls", Json.mkObj <| declsForTag.toList.map (fun (decl, ⟨isComputable, thmsForDecl⟩) =>
          (decl.toString, Json.mkObj <| [
            ("isComputable", Json.bool isComputable),
            ("thms", Json.mkObj <| thmsForDecl.toList.map
              (fun thm => (ThmToName thm |>.toString, ThmToJson thm)))
          ])))
        ])
    )
  )
)

elab (name := oeisInfo) "#oeis_info" : command =>
  showOEISInfo

elab (name := oeisTags) "#oeis_info_json" : command => do
  let info ← Command.liftTermElabM getOEISInfo
  let result := OEISInfoToJson info
  logInfo m!"{result}"
