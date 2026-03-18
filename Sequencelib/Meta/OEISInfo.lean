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
import Sequencelib.Meta.Db

open Lean Meta Elab Qq

def matchValueTheorem (c : Codomain) (e : Expr) (seq : Name) (n : Nat) :
    MetaM (Option c) := do
  let ⟨_, _, z⟩ ← forallMetaTelescope e
  let t ← match z with
  | .app (.app (.app (.const ``Eq _) (.const co _)) (.app (.const f _) (idx : Q(Nat)))) value =>
    let some i := idx.nat? | return none
    if f ≠ seq || co ≠ c || i ≠ n then
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

def findValueTheorems' (seq : SimpleSequence) (c : Codomain) (offst : Nat) :
    MetaM (Array (Thm c)) := do
  let env ← getEnv
  let mut result := #[]
  for i in [offst:SearchMaxIndex + 1] do
    let some p := Suffixes[i]? | continue
    let n := Name.appendAfter seq.definition s!"_{p}"
    let some type := env.find? n |>.map (·.type) | continue
    let some value ← matchValueTheorem c type seq.definition i | continue
    result := result.push <| .Value n seq.definition i value
  return result

def findEquivTheorems' (seqs : Array SimpleSequence) (c : Codomain) : MetaM (Array (Thm c)) := do
  let env ← getEnv
  let mut result := #[]
  for seq1 in seqs do
    for seq2 in seqs do
      if seq1.definition != seq2.definition then
        let n := Name.appendAfter seq1.definition s!"_eq_{seq2.definition.getString!}"
        let some type := env.find? n |>.map (·.type) | continue
        let some _ ← matchEquivTheorem type seq1.definition seq2.definition | continue
        result := result.push <| Thm.Equiv n seq1.definition seq2.definition
  return result

def toTagWithInfo (s : SimpleTag) : MetaM TagWithInfo := do
  return TagWithInfo.mk s (
    (← s.sequences.mapM fun seq =>
      findValueTheorems' seq s.codomain s.offset
    ).flatten.append (← findEquivTheorems' s.sequences s.codomain)
  )

def getTagsWithInfo : MetaM TagsWithInfo := do
  let env ← getEnv
  let info := oeisExt.getState env
  return .ofList (← info.toList.mapM fun (tag, simpleTag) => do
    return (tag, ← toTagWithInfo simpleTag)
  )

def getTagWithInfo (tag : Tag) : MetaM TagWithInfo := do
  let env ← getEnv
  let info := oeisExt.getState env
  let some t := info.get? tag | throwError "tag `{tag}` not found"
  toTagWithInfo t

-- run_meta do
--    let x ← getTagWithInfo "A000001"
--    dbg_trace (repr x)
-- #eval do
--   let act := do
--     ensureDb
--     populateDb default
--   DbError.toIO <| DbM.run' act "./sequencelib.sql" "./sequencelib2.db"
--   IO.println "done"

def OEISInfoToMod (info : TagsWithInfo) :
    Std.HashMap Name
      (Std.HashMap Tag (Nat × Std.HashMap Name (Bool × (c : Codomain) × Array (Thm c)))) :=
  info.fold (fun byMod tag oeisTag =>
    oeisTag.sequences.foldl (fun byModInner seq =>
      let mod := seq.mod
      let byTags := byModInner.get? mod |>.getD ∅
      let ⟨_, thms⟩ := byTags |>.get? tag |>.getD ⟨0, ∅⟩
      let new := thms.insert seq.definition ⟨seq.isComputable, ⟨oeisTag.codomain, oeisTag.theorems⟩⟩
      let byTags := byTags.insert tag ⟨oeisTag.offset, new⟩
      let newByModInner := byModInner.insert mod byTags
      newByModInner
    ) byMod
  ) ∅

def showOEISInfo : Command.CommandElabM Unit := do
  let info ← Command.liftTermElabM getTagsWithInfo
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

def OEISInfoToJson (info : TagsWithInfo) : Json :=
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
  let info ← Command.liftTermElabM getTagsWithInfo
  let result := OEISInfoToJson info
  logInfo m!"{result}"
