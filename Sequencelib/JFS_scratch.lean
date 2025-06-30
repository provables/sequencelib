import Lean
import Mathlib
import Sequencelib.Meta
import Qq

open Lean Expr Elab Term Tactic Meta Qq

#check Lean.Meta.throwTacticEx

elab "oeis_tactic" : tactic =>
  Lean.Elab.Tactic.withMainContext do
    let goal ← Lean.Elab.Tactic.getMainGoal
    let goalDecl ← goal.getDecl
    let goalType := goalDecl.type
    match (← inferTypeQ goalType) with
      | ⟨1, ~q(Prop), ~q(Eq (($f : ℕ → ℕ) $idx) $value)⟩  =>
        dbg_trace "good"
        dbg_trace f!"f = {f}"
        let name := f.constName
        dbg_trace f!"name = {name}"
        dbg_trace f!"goal type: {goalType}"
        dbg_trace f!"Inside OEIS tactic"
        evalTactic (← `(tactic| try rfl))
        evalTactic (← `(tactic| try decide))
        dbg_trace f!"After decide"
        evalTactic (← `(tactic| try simp [$(mkIdent name):ident]))
        dbg_trace f!"After try simp"
      | _ =>
        dbg_trace "bad"
        Lean.Meta.throwTacticEx `oeis_tactic goal
           (m!"invalid goal type")


def proveSequenceValue (decl : Name ) (proof: Expr) (idx : Nat) (value : Nat) :
    CoreM Unit := do
  let f : Q(ℕ → ℕ) := mkConst decl
  let thmDecl := Declaration.thmDecl {
    name := `baz
    levelParams := []
    type := q($f $(idx) = $(value))
    --type := .app (.app (.app (.const ``Eq [1]) (.const ``Nat [])) (.app (.const decl []) (.lit (.natVal idx)))) (.lit (.natVal value))
    value := proof
    --value := q(@rfl ℕ $(value))
    -- value := q(sorryAx ($f $(idx) = $(value)) false)
    --value := .app (.app (.const ``sorryAx [1]) q(Prop)) (.const `Bool.false [])
  }
  Lean.addAndCompile thmDecl

#check sorryAx
def createThm (decl : Name) (idx value : ℕ) : TermElabM Unit := do
  -- TODO: try Term.elabTerm (← `(term| ...write term here )
  let f : Q(ℕ → ℕ) := mkConst decl
  let thm := q($f $(idx) = $(value))
  let proof ← Term.elabTerm (← `(term| by oeis_tactic)) (some thm)
  Term.synthesizeSyntheticMVarsNoPostponing
  let r ← instantiateMVars proof
  let z := getAppFn r
  dbg_trace f!"foo: {repr <| getAppFn r}"
  -- TODO: check if q is sorryAx, that means it failed
  match z with
  | .const ``sorryAx _ => dbg_trace "sorry"
  | _ => dbg_trace "good"
  let thmDecl := Declaration.thmDecl {
    name := `baz2
    levelParams := []
    type := ← instantiateMVars thm
    --type := .app (.app (.app (.const ``Eq [1]) (.const ``Nat [])) (.app (.const decl []) (.lit (.natVal idx)))) (.lit (.natVal value))
    value := ← instantiateMVars proof
    --value := q(@rfl ℕ $(value))
    -- value := q(sorryAx ($f $(idx) = $(value)) false)
    --value := .app (.app (.const ``sorryAx [1]) q(Prop)) (.const `Bool.false [])
  }
  Lean.addAndCompile thmDecl

def bar (n : ℕ) : ℕ :=
  match n with
  | 0 => 0
  | n + 1 => bar (n - 1)

#eval bar 1

theorem woo : bar 1 =  0 := by oeis_tactic

def baz (n : ℕ) : ℕ := 0
theorem wii : baz 1 = 0 := by oeis_tactic

run_elab do
  createThm `baz 1 0

#print baz2
#print woo
#check simp
#check evalTactic
#check @rfl ℕ (bar 1)
run_elab do
  -- run tactics
  -- get the proof from that run -> : Expr
  proveSequenceValue `bar expr 2 2

#print baz


-- Function that takes the name of a sequence, a list of values and an optional offest
-- and tries to declare and prove a theorem for each value in the `values` list.
def proveSequenceValues (decl : Name) (values : List Nat) (off : Nat := 0) :
    Tactic.TacticM Unit := do
  for i in [0:values.length] do
    let some p := suffixes[i]? | continue
    let thmName := Name.appendAfter decl s!"_{p}"
    let thmDecl := Declaration.thmDecl {
          name := thmName
          levelParams := []
          type := mkConst `String
          value := mkStrLit seqStr
        }
