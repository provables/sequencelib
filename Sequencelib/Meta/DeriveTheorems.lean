import Lean
import Mathlib
import Qq

-- TODO: Discuss licensing

open Lean Expr Elab Term Tactic Meta Qq

def deriveTheorem (decl : Name) (idx value : ℕ) : TermElabM Unit := do
  return

def deriveTheorems (decl : Name) : TermElabM Unit := do
  let env ← getEnv
  if Lean.isNoncomputable env decl then
    dbg_trace f!"skipping derivation of theorems for noncomputable function {decl}"
    return
  let y ← Term.elabTerm (← `(term|$(mkIdent decl):ident 6)) (some q(ℕ))
  Term.synthesizeSyntheticMVarsNoPostponing
  let r ← instantiateMVars y
  let x ← unsafe evalExpr ℕ q(ℕ) r
  dbg_trace f!"deriving theorems for value {x}..."
  return
