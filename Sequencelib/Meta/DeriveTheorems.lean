/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Mathlib
import Sequencelib.Meta.Defs
import Sequencelib.Meta.Codomain

open Lean Expr Elab Term Tactic Meta Qq Command

#check Lean.Elab.Tactic.done

def doTactic (s: TSyntax `tactic) : TacticM Bool := do
  dbg_trace f!"inside doTactic for tactic {s}"
  -- first, get the proof state prior to running the tactic
  let state ← saveState
  -- execute the tactic; since all tactics are wrapped in the `try` tactic,
  -- this never raises an exception
  evalTactic s
  -- check the goal and see if it worked; if not, restore the state
  let gs ← getUnsolvedGoals
  if not gs.isEmpty then
    state.restore
  dbg_trace f!"Leaving doTactic; Goals closed: {gs.isEmpty}"
  return gs.isEmpty


def doTactics (name : Name) : TacticM Unit := do
  let tactics : List (TSyntax `tactic) := [ (← `(tactic|try rfl)),
    (← `(tactic|try decide +kernel)),
    (← `(tactic|try decide)),
    (← `(tactic|try simp [$(mkIdent name):ident])),
    (← `(tactic|try simp [$(mkIdent name):ident] <;> decide)),
    (← `(tactic|try unfold $(mkIdent name):ident <;> norm_num)),
  ]
  for s in tactics do
    let x ←  doTactic s
    if x then
      return ()
  let goal ← Lean.Elab.Tactic.getMainGoal
  Lean.Meta.throwTacticEx `oeis_tactic goal (m!"could not close goal")


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
        evalTactic (← `(tactic|
          first
          | decide +kernel
          | rfl
          | decide
          | simp [$(mkIdent name):ident]
          | simp [$(mkIdent name):ident] <;> decide
        ))
      | _ =>
        Lean.Meta.throwTacticEx `oeis_tactic goal
           (m!"invalid goal type")

elab "oeis_tactic_v2" : tactic =>
  Lean.Elab.Tactic.withMainContext do
    dbg_trace "Inside changed oeis_tactic_v2"
    let goal ← Lean.Elab.Tactic.getMainGoal
    let goalDecl ← goal.getDecl
    let goalType := goalDecl.type
    match (← inferTypeQ goalType) with
      | ⟨1, ~q(Prop), ~q(Eq (($f : Nat → $c) $idx) $value)⟩ =>
        if c.constName != `Nat && c.constName != `Int then
          Lean.Meta.throwTacticEx `oeis_tactic goal m!"wrong codomain {c}"
        let name := f.constName
        doTactics name
      | _ =>
        Lean.Meta.throwTacticEx `oeis_tactic goal
           (m!"invalid goal type")


def deriveTheorem {c : Codomain} (decl : Name) (idx : Nat) (value : ↑c) (stx : Syntax) :
    TermElabM (Option String) := do
  let some idxName := Suffixes[idx]? |
    return some s!"Maximum index not supported above 100"
  let declConst : Expr := .const decl []
  let idxExpr : Expr := toExpr idx
  let lhsExpr := mkApp declConst idxExpr
  let valueExpr := toExpr value
  let cTypeExpr : Expr := .const c []
  let eqExpr ← instantiateMVars <| mkApp3 (.const `Eq [1]) cTypeExpr lhsExpr valueExpr
  let s ← saveState
  let proof ← Term.elabTerm (← `(term| by oeis_tactic)) (some eqExpr)
  Term.synthesizeSyntheticMVarsNoPostponing
  let p ← instantiateMVars proof
  -- dbg_trace "After instantiate MVars; p: {p}"
  if (← instantiateMVars proof).hasSorry then
    s.restore
    return some s!"Auto derivation failed for theorem: {decl} {idx} = {value}"
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
  return none

def deriveTheoremForIndex (decl : Name) (idx : Nat) (stx : Syntax) (cod : Codomain) :
    TermElabM (Option String) := do
  let value ← instantiateMVars (
    ← Term.elabTerm (← `(term|$(mkIdent decl):ident $(quote idx))) (some (mkConst cod [])))
  Term.synthesizeSyntheticMVarsNoPostponing
  let z ← unsafe evalExpr cod (mkConst cod []) value
  deriveTheorem decl idx z stx

def deriveTheoremForIndex' (decl : Name) (idx : Nat) (stx : Syntax) :
    TermElabM (Option String) := do
  let cod ← codomainOfDecl decl
  deriveTheoremForIndex decl idx stx cod

def deriveTheorems (decl : Name) (offset maxIndex : Nat) (stx : Syntax) : CommandElabM Unit := do
  let cod ← codomainOfDecl decl
  let env ← getEnv
  if Lean.isNoncomputable env decl then
    logError m!"Auto derivation of theorems not implemented for noncomputable function {decl}"
    return
  let mut errors := #[]
  for idx in [offset:maxIndex+1] do
    if (← IO.checkCanceled) then
      errors := errors.push "Cancelled"
      break
    let some msg := (← Command.liftTermElabM <| deriveTheoremForIndex decl idx stx cod) | continue
    errors := errors.push s!"{msg}"
  if !errors.isEmpty then
    logError (String.intercalate "\n" errors.toList)
