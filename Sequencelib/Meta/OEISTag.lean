/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira
-/
import Lean
import Qq
import Batteries
open Lean Meta Elab Qq

abbrev Tag := String

instance : Inhabited Tag := inferInstanceAs (Inhabited String)

inductive Thm : Type where
  | Value (thmName : Name) (seq : Name) (index : Nat) (value : Nat) : Thm
  | Equiv (thmName : Name) (seq1 : Name) (seq2 : Name) : Thm
  deriving BEq, Hashable, Repr, Inhabited

structure Sequence where
  tagName : Tag
  definition : Name
  module : Name
  theorems : Array Thm
  offset : Nat
  deriving Repr, Inhabited

structure OEISTag where
  tagName : Tag
  sequences : Array Sequence
  offset : Nat
  deriving Repr, Inhabited

abbrev OEISInfo := Std.HashMap Tag OEISTag

instance : Inhabited OEISInfo := inferInstanceAs (Inhabited <| Std.HashMap _ _)

def addOEISInfo (info : OEISInfo) (tag : OEISTag) : OEISInfo :=
  let (prev, info) := info.getThenInsertIfNew? tag.tagName tag
  match prev with
    | some v => info.insert tag.tagName {v with sequences := v.sequences.append tag.sequences}
    | _ => info

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
    (declName : Name) (module : Name) (oeisTag : String) (offset : Nat) : m Unit :=
  modifyEnv (oeisExt.addEntry · {
    tagName := oeisTag,
    sequences := #[⟨oeisTag, declName, module, #[], offset⟩],
    offset := offset
  })

syntax (name := OEIS) "OEIS" ":=" ident ("," "offset" ":=" num)?: attr

initialize registerBuiltinAttribute {
    name := `OEIS
    descr := "Apply an OEIS tag to a definition."
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
          "* [The On-Line Encyclopedia of Integer Sequences (OEIS): {seqStr}](https://oeis.org/{seqStr})",
          s!"* Offset: {offst}",
          oldDoc
        ]
        addDocStringCore decl <| "\n\n".intercalate <| newDoc.filter (· ≠ "")
        addOEISEntry decl mod seqStr offst
        let tagDeclName := Name.mkStr decl "OEIS"
        let tagDecl := Declaration.defnDecl {
          name := tagDeclName
          levelParams := []
          type := mkConst `String
          value := mkStrLit seqStr
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        addDocStringCore tagDeclName "OEIS Identifier"
        let offsetDeclName := Name.mkStr decl "offset"
        let offsetDecl := Declaration.defnDecl {
          name := offsetDeclName
          levelParams := []
          type := mkConst `Nat
          value := mkNatLit offst
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        addDocStringCore offsetDeclName "OEIS sequence offset"
        Lean.addAndCompile tagDecl
        Lean.addAndCompile offsetDecl
      | _ => throwError "invalid OEIS attribute syntax"
  }
