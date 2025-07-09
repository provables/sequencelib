/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira
-/
import Lean
import Qq
import Batteries
import Sequencelib.Meta.Defs
import Sequencelib.Meta.OEISTag

open Lean Meta Elab Qq

def matchValueTheorem (c : Codomain) (e : Expr) (seq : Name) (n : Nat) :
    MetaM (Option c) := do
  let ⟨_, _, z⟩ ← forallMetaTelescope e
  let t ← match z with
  | .app (.app (.app (.const ``Eq _) (.const co _)) (.app (.const f _) (idx : Q(Nat)))) value =>
    let some i := idx.nat? | return none
    if f ≠ seq || co ≠ toName c || i ≠ n then
      return none
    match c with
    | .Nat => pure value.nat?
    | .Int => pure value.int?
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

def findValueTheorems {c : Codomain} (seq : Sequence c) (off : Nat := 0) :
    MetaM (Array (Thm c)) := do
  let env ← getEnv
  let mut result := #[]
  for i in [off:SearchMaxIndex + 1] do
    let some p := Suffixes[i]? | continue
    let n := Name.appendAfter seq.definition s!"_{p}"
    let some type := env.find? n |>.map (·.type) | continue
    let some value ← matchValueTheorem c type seq.definition i | continue
    result := result.push <| .Value n seq.definition i value
  return result

def findEquivTheorems {c : Codomain} (decl : Name) (decls : Array Name) :
    MetaM (Array (Thm c)) := do
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
      oeisTag.codomain,
      ← oeisTag.sequences.mapM (fun ⟨c, seq⟩ => do
        let new_thms := (← findValueTheorems seq)
          |>.append (← findEquivTheorems seq.definition <| oeisTag.sequences.map (·.snd.definition))
        let isComputable := !isNoncomputable env seq.definition
        return ⟨
          c, {seq with theorems := seq.theorems.append new_thms, isComputable := isComputable}
        ⟩
      ),
      oeisTag.offset
    ⟩)
  ))

def OEISInfoToMod (info : OEISInfo) :
    Std.HashMap Name
      (Std.HashMap Tag (Nat × Std.HashMap Name (Bool × (c : Codomain) × Array (Thm c)))) :=
  info.fold (fun acc tag oeisTag =>
    let mod := oeisTag.sequences[0]? |>.map (·.snd.module) |>.getD `no_module
    let tagsForMod := acc.get? mod |>.getD ∅
    let declsForTagWithThms := oeisTag.sequences.foldl (fun accs ⟨c, seq⟩ =>
      ⟨seq.offset, accs.2.insert seq.definition ⟨seq.isComputable, ⟨c, seq.theorems⟩⟩⟩
    ) <| tagsForMod.get? tag |>.getD ⟨0, ∅⟩
    acc.insert mod <| tagsForMod.insert tag declsForTagWithThms
  ) ∅

def showOEISInfo : Command.CommandElabM Unit := do
  let info ← Command.liftTermElabM getOEISInfo
  let mut msgs := #[]
  for (mod, tagsForMod) in OEISInfoToMod info do
    msgs := msgs.push m!"Module: {mod}"
    for (tag, ⟨offst, declsForTag⟩) in tagsForMod do
      msgs := msgs.push m!".. tag: {tag}, offset: {offst}"
      for (decl, ⟨isComputable, cod, thmsForDecl⟩) in declsForTag do
        let computable := if isComputable then "computable" else "noncomputable"
        msgs := msgs.push m!".... [{computable}] {decl} : {repr cod}"
        for thm in thmsForDecl do
          msgs := msgs.push m!"...... {repr thm}"
  logInfo <| MessageData.joinSep msgs.toList "\n"

def ThmToJson {c : Codomain} (thm : Thm c) : Json :=
  match thm with
  | .Value thmName declName index value =>
    Json.mkObj [
      ("type", "value"),
      ("declaration", Json.str declName.toString),
      ("theorem", Json.str thmName.toString),
      ("index", Json.num index),
      ("value", Json.num (by
        cases c with
        | Nat => exact ↑value
        | Int => exact ↑value
      ))
    ]
  | .Equiv thmName seq1 seq2 =>
    Json.mkObj [
      ("type", "equiv"),
      ("theorem", thmName.toString),
      ("seq1", seq1.toString),
      ("seq2", seq2.toString)
    ]

def ThmToName {c : Codomain} (thm : Thm c) : Name :=
  match thm with
  | .Value n _ _ _ => n
  | .Equiv n _ _ => n

def OEISInfoToJson (info : OEISInfo) : Json :=
  Json.mkObj <| OEISInfoToMod info |>.toList.map (fun (mod, tagsForMod) =>
    (mod.toString, Json.mkObj <| tagsForMod.toList.map (fun (tag, ⟨offst, declsForTag⟩) =>
      (tag, Json.mkObj [
        ("offset", Json.num offst),
        ("decls", Json.mkObj <| declsForTag.toList.map (fun (decl, ⟨isComputable, cod, thmsForDecl⟩) =>
          (decl.toString, Json.mkObj <| [
            ("isComputable", Json.bool isComputable),
            ("codomain", s!"{repr cod}"),
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
