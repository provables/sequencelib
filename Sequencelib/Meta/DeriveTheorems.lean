import Lean
import Mathlib
import Qq

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
  -- TODO: try Term.elabTerm (← `(term| ...write term here )
  dbg_trace "initial"
  let f : Q(ℕ → ℕ) := mkConst decl
  let thm := q($f $(idx) = $(value))
  dbg_trace "after thm"
  let proof ← Term.elabTerm (← `(term| by oeis_tactic)) (some thm)
  Term.synthesizeSyntheticMVarsNoPostponing
  match getAppFn (← instantiateMVars proof) with
  | .const ``sorryAx _ => dbg_trace "sorry"; return
  | _ => dbg_trace "good"
  let thmDecl := Declaration.thmDecl {
    name := Name.appendAfter decl s!"_{idx}"
    levelParams := []
    type := ← instantiateMVars thm
    value := ← instantiateMVars proof
  }
  dbg_trace "after thm decl"
  Lean.addAndCompile thmDecl

def deriveTheorems (decl : Name) (offset maxIndex : ℕ) : TermElabM Unit := do
  let env ← getEnv
  if Lean.isNoncomputable env decl then
    dbg_trace f!"skipping derivation of theorems for noncomputable function {decl}"
    return
  for idx in [offset:maxIndex] do
    let y ← Term.elabTerm (← `(term|$(mkIdent decl):ident $(quote idx))) (some q(ℕ))
    Term.synthesizeSyntheticMVarsNoPostponing
    let r ← instantiateMVars y
    let x ← unsafe evalExpr ℕ q(ℕ) r
    dbg_trace f!"deriving theorems for value {x}..."
    deriveTheorem decl idx x
  return
