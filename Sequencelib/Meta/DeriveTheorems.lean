import Lean
import Mathlib
import Qq
import Sequencelib.Meta.Defs

open Lean Expr Elab Term Tactic Meta Qq

elab "oeis_tactic" : tactic =>
  Lean.Elab.Tactic.withMainContext do
    let goal ← Lean.Elab.Tactic.getMainGoal
    let goalDecl ← goal.getDecl
    let goalType := goalDecl.type
    match (← inferTypeQ goalType) with
      | ⟨1, ~q(Prop), ~q(Eq (($f : ℕ → ℕ) $idx) $value)⟩  =>
        let name := f.constName
        evalTactic (← `(tactic| try rfl))
        evalTactic (← `(tactic| try decide))
        evalTactic (← `(tactic| try simp [$(mkIdent name):ident]))
      | _ =>
        Lean.Meta.throwTacticEx `oeis_tactic goal
           (m!"invalid goal type")

def deriveTheorem (decl : Name) (idx value : ℕ) : TermElabM Unit := do
  let f : Q(ℕ → ℕ) := mkConst decl
  let thm := q($f $(idx) = $(value))
  let proof ← Term.elabTerm (← `(term| by oeis_tactic)) (some thm)
  Term.synthesizeSyntheticMVarsNoPostponing
  if (getAppFn (← instantiateMVars proof) |>.constName) == `sorryAx then
    return
  let some idxName := Suffixes[idx]? | return
  let thmDecl := Declaration.thmDecl {
    name := Name.appendAfter decl s!"_{idxName}"
    levelParams := []
    type := ← instantiateMVars thm
    value := ← instantiateMVars proof
  }
  Lean.addAndCompile thmDecl

def deriveTheorems (decl : Name) (offset maxIndex : ℕ) : TermElabM Unit := do
  let env ← getEnv
  let some (_ : Q(ℕ → ℕ)) := env.find? decl |>.map (·.type) | return
  if Lean.isNoncomputable env decl then
    dbg_trace f!"skipping derivation of theorems for noncomputable function {decl}"
    return
  for idx in [offset:maxIndex+1] do
    let value ← instantiateMVars (
      ← Term.elabTerm (← `(term|$(mkIdent decl):ident $(quote idx))) (some q(ℕ)))
    Term.synthesizeSyntheticMVarsNoPostponing
    deriveTheorem decl idx (← unsafe evalExpr ℕ q(ℕ) value)
  return
