/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira
-/
import Lean
import Qq
import Batteries
import Sequencelib.Meta.Defs
import Sequencelib.Meta.DeriveTheorems

open Lean Meta Elab Qq

abbrev Tag := String

instance : Inhabited Tag := inferInstanceAs (Inhabited String)

inductive Thm (c : Codomain) : Type where
  | Value (thmName : Name) (seq : Name) (index : Nat) (value : ↑c) : Thm c
  | Equiv (thmName : Name) (seq1 : Name) (seq2 : Name) : Thm c
  deriving Inhabited

instance {c : Codomain} : Repr (Thm c) where
  reprPrec t _ :=
    match t with
    | .Value n s i v => by
      cases c with
      | Nat => exact s!"[Nat] theorem {n} : {s} {i} = {v}".toFormat
      | Int => exact s!"[Int] theorem {n} : {s} {i} = {v}".toFormat
    | .Equiv n s1 s2 => s!"theorem {n} : {s1} = {s2}"

structure Sequence (c : Codomain) where
  tagName : Tag
  definition : Name
  module : Name
  theorems : Array (Thm c)
  offset : Nat
  isComputable : Bool
  deriving Inhabited, Repr

structure OEISTag where
  tagName : Tag
  codomain: Codomain
  -- We allow different codomains for the sequences associated to a tag because the extension
  -- doesn't allow raising or easily returning errors. We validate this during collection
  -- of the data.
  sequences : Array ((c : Codomain) × Sequence c)
  offset : Nat
  deriving Inhabited, Repr

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
    (declName : Name) (module : Name) (oeisTag : String) (codomain: Codomain) (offset : Nat) :
    m Unit :=
  modifyEnv (oeisExt.addEntry · {
    tagName := oeisTag,
    codomain := codomain,
    sequences := #[⟨codomain, ⟨oeisTag, declName, module, #[], offset, default⟩⟩],
    offset := offset
  })

structure OEISOptions where
  offset : Nat
  derive : Bool
  maxIndex : Nat
  deriving Repr, Inhabited

def getOptions {m : Type → Type} [Monad m] [MonadError m]
    (kwds : Array Syntax) (opts : Array Syntax) : m OEISOptions := do
  let mut os : OEISOptions := default
  for (kwd, val) in kwds.zip opts do
    match kwd.getKind with
    | `token.offset =>
      let `($n:num) := val | throwError "offset should be a Nat"
      os := {os with offset := n.getNat}
    | `token.derive =>
      let `($b:ident) := val | throwError "derive should be true or false"
      let b ← match b.getId with
        | `true => pure true
        | `false => pure false
        | _ => throwError "derive should be true or false"
      os := {os with derive := b}
    | `token.maxIndex =>
      let `($n:num) := val | throwError "maxIndex should be a Nat"
      os := {os with maxIndex := n.getNat}
    | _ => throwError m!"unknown option {repr kwd}"
  return os

syntax (name := oeis_option) ("offset" <|> "derive" <|> "maxIndex") : term
syntax (name := OEIS) "OEIS" ":=" ident ("," oeis_option ":=" term)* : attr

initialize registerBuiltinAttribute {
    name := `OEIS
    descr := "Apply an OEIS tag to a definition."
    applicationTime := AttributeApplicationTime.afterCompilation
    add := fun decl stx kind => do
      match stx with
      | `(attr|OEIS := $seq $[, $e := $t]*) => do
        let seqStr := seq.getId.toString
        let opts ← getOptions e t
        let offst := opts.offset
        let maxIdx := opts.maxIndex
        let env ← getEnv
        let declType := env.find? decl |>.getD default |>.type
        let c ← codomainOf declType
        let mod ← getMainModule
        let oldDoc := (← findDocString? env decl).getD ""
        let newDoc := [s!
          "* [The On-Line Encyclopedia of Integer Sequences (OEIS): {seqStr}](https://oeis.org/{seqStr})",
          s!"* Offset: {offst}",
          oldDoc
        ]
        addDocStringCore decl <| "\n\n".intercalate <| newDoc.filter (· ≠ "")
        addOEISEntry decl mod seqStr c offst
        let tagDeclName := Name.append decl <| Name.mkSimple "OEIS"
        let tagDecl := Declaration.defnDecl {
          name := tagDeclName
          levelParams := []
          type := mkConst `String
          value := mkStrLit seqStr
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        addDocStringCore tagDeclName "OEIS Identifier"
        addDeclarationRangesFromSyntax tagDeclName stx
        let offsetDeclName := Name.append decl <| Name.mkSimple "offset"
        let offsetDecl := Declaration.defnDecl {
          name := offsetDeclName
          levelParams := []
          type := mkConst `Nat
          value := mkNatLit offst
          hints := ReducibilityHints.abbrev
          safety := DefinitionSafety.safe
        }
        addDocStringCore offsetDeclName "OEIS sequence offset"
        addDeclarationRangesFromSyntax offsetDeclName stx
        Lean.addAndCompile tagDecl
        Lean.addAndCompile offsetDecl
        if opts.derive then
          liftCommandElabM <| Command.liftTermElabM <| deriveTheorems decl offst maxIdx stx
      | _ => throwError "invalid OEIS attribute syntax"
  }
