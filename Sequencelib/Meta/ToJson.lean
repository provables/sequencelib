import Sequencelib.Meta.Defs

open Lean

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

def FullInfoToJson (d : OEISFullInfo) : Json :=
  Json.mkObj <| d.toList.map (fun (tag, fullData) =>
    (tag, Json.mkObj [
      ("tag", tag),
      ("codomain", s!"{fullData.info.codomain}"),
      ("offset", Json.num fullData.info.offset),
      ("description", fullData.repoInfo.description),
      ("keywords", Json.arr <| fullData.repoInfo.keywords.toArray.map Json.str),
      ("sequences", Json.mkObj <| fullData.info.sequences.toList.map (fun (⟨_, decl⟩) => (
        decl.definition.toString, Json.mkObj [
          ("definition", decl.definition.toString),
          ("module", decl.module.toString),
          ("isComputable", decl.isComputable),
          ("theorems", Json.arr <| decl.theorems.map ThmToJson)
        ])))
    ]))
