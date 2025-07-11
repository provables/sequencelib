/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Sequencelib.Meta.Defs

open Lean Expr Elab Term Tactic Meta Qq

elab "oeis_tactic" : tactic =>
  Lean.Elab.Tactic.withMainContext do
    let goal ← Lean.Elab.Tactic.getMainGoal
    let goalDecl ← goal.getDecl
    let goalType := goalDecl.type
    match (← inferTypeQ goalType) with
      | ⟨1, ~q(Prop), ~q(Eq (($f : Nat → $c) $idx) $value)⟩ =>
        if c.constName != `Nat && c.constName != `Int then
          Lean.Meta.throwTacticEx `oeis_tactic goal m!"wrong codomain {c}"
        let name := f.constName
        evalTactic (← `(tactic| try rfl))
        evalTactic (← `(tactic| try decide))
        evalTactic (← `(tactic| try simp [$(mkIdent name):ident]))
        evalTactic (← `(tactic| try simp [$(mkIdent name):ident] <;> decide))
      | _ =>
        Lean.Meta.throwTacticEx `oeis_tactic goal
           (m!"invalid goal type")

def deriveTheorem {c : Codomain} (decl : Name) (idx : Nat) (value : ↑c) (stx : Syntax) :
    TermElabM Unit := do
  let declConst : Expr := .const decl []
  let idxExpr : Expr := toExpr idx
  let lhsExpr := mkApp declConst idxExpr
  let valueExpr := toExpr value
  let cTypeExpr : Expr := .const c []
  let eqExpr := mkApp3 (.const `Eq [1]) cTypeExpr lhsExpr valueExpr
  let proof ← Term.elabTerm (← `(term| by oeis_tactic)) (some eqExpr)
  Term.synthesizeSyntheticMVarsNoPostponing
  if (← instantiateMVars proof).isSorry then
    return
  let some idxName := Suffixes[idx]? | return
  let thmDeclName := Name.appendAfter decl s!"_{idxName}"
  let thmDecl := Declaration.thmDecl {
    name := thmDeclName
    levelParams := []
    type := ← instantiateMVars eqExpr
    value := ← instantiateMVars proof
  }
  addDocStringCore thmDeclName s!"(Auto-generated theorem for `{decl}`)"
  let originalRange := stx.getRange? |>.getD default
  let newRange := {originalRange with
    start := ⟨originalRange.start.byteIdx + idx + 2⟩,
    stop := ⟨originalRange.stop.byteIdx + idx + 2⟩}
  addDeclarationRangesFromSyntax thmDeclName (Syntax.ofRange newRange)
  Lean.addAndCompile thmDecl

def deriveTheorems (decl : Name) (offset maxIndex : Nat) (stx : Syntax) : TermElabM Unit := do
  let env ← getEnv
  let some f := env.find? decl |>.map (·.type) | return
  let cod ← codomainOf f
  if Lean.isNoncomputable env decl then
    logWarning m!"Auto derivation of theorems not implemented for noncomputable function {decl}"
    return
  for idx in [offset:maxIndex+1] do
    let value ← instantiateMVars (
      ← Term.elabTerm (← `(term|$(mkIdent decl):ident $(quote idx))) (some (mkConst cod [])))
    Term.synthesizeSyntheticMVarsNoPostponing
    let z ← unsafe evalExpr cod (mkConst cod []) value
    deriveTheorem decl idx z stx
