import Lean
import Mathlib
import Sequencelib.Meta
import Qq

open Lean Meta Elab Qq

#check List.map

def z := Expr.const ``Nat.zero []
#eval z

def one := Expr.app (.const ``Nat.succ []) z
#eval one

def natExpr: Nat → Expr
| 0     => z
| n + 1 => .app (.const ``Nat.succ []) (natExpr n)

#eval natExpr 0


-- example of executing a meta-function (findEquivTheorems) with the `run_meta`
-- function; put the cursor at the end of the logInfo line to see the result
run_meta do
  let x ← findEquivTheorems `Foo #[]
  logInfo m!"x is {repr x}"


-- should try a similar example with the findValueTheorems function (and)
-- define a trivial sequence and theorem for the first value
def a (n : ℕ) : ℕ := n
theorem a_zero : a 0 = 0 := by rfl


elab "list_local_decls_1" : tactic =>
  Lean.Elab.Tactic.withMainContext do
    let ctx ← Lean.MonadLCtx.getLCtx -- get the local context.
    ctx.forM fun decl: Lean.LocalDecl => do
      let declExpr := decl.toExpr -- Find the expression of the declaration.
      let declName := decl.userName -- Find the name of the declaration.
      let declType ← Lean.Meta.inferType declExpr -- **NEW:** Find the type.
      dbg_trace f!"+ local decl: name: {declName} | expr: {declExpr} | type: {declType}"

theorem a_one : a 1 = 1 := by
  list_local_decls_1


run_meta do
  let x ← findValueTheorems `a
  logInfo m!"x is {repr x}"


-- example "suppose" tactic from the Lean book, but this is just a pure tactic,
-- it is not trying to declare and prove any theorems.
open Elab
#check Tactic.evalTactic

open Lean Meta Elab Tactic Term in
elab "suppose " n:ident " : " t:term : tactic => do
  let n : Name := n.getId
  let mvarId ← getMainGoal
  mvarId.withContext do
    let t ← elabType t
    let p ← mkFreshExprMVar t MetavarKind.syntheticOpaque n
    let (_, mvarIdNew) ← MVarId.intro1P $ ← mvarId.assert n t p
    replaceMainGoal [p.mvarId!, mvarIdNew]
  evalTactic $ ← `(tactic|rotate_left)

-- example of using the suppose tactic to prove an example:
variable (a: ℕ )

example : 0 + a = a := by
  suppose add_comm : 0 + a = a + 0
  · rw [add_comm]; rfl     -- closes the initial main goal
  · rw [Nat.zero_add]; rfl -- proves `add_comm`


#check Tactic.Tactic


syntax "custom_tactic" : tactic

macro_rules
| `(tactic| custom_tactic) => `(tactic| rfl)
-- | `(tactic| custom_tactic) => `(tactic| apply And.intro <;> custom_tactic)

example : 2 = 2 := by custom_tactic

elab "custom_sorry_1" : tactic =>
  Lean.Elab.Tactic.withMainContext do
    let goal ← Lean.Elab.Tactic.getMainGoal
    let goalDecl ← goal.getDecl
    let goalType := goalDecl.type
    dbg_trace f!"goal type: {goalType}"
    Lean.Elab.admitGoal goal

example : 1 = 2 := by
  custom_sorry_1

#check Lean.Parser.Attr.simps

#check 1 = 1
#check Lean.Expr
#check Eq
#check Prop
#check false
def proveSequenceValue (decl : Name ) (idx : Nat) (value : Nat) :
    CoreM Unit := do
  let env ← getEnv
  let thmDecl := Declaration.thmDecl {
    name := `foo
    levelParams := []
    type := .app (.app (.app (.const ``Eq [1]) (.const ``Nat [])) (.app (.const decl []) (.lit (.natVal idx)))) (.lit (.natVal value))
    value := .app (.app (.const ``sorryAx [1]) (.const ``Prop [])) (.const `Bool.false [])
  }
  Lean.addAndCompile thmDecl

def bar (n : ℕ) : ℕ := n

run_meta do
  proveSequenceValue `bar 1 1


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
