/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Mathlib

open Lean Expr Elab Term Tactic Meta Qq Command


def makeTactics (name : Name) : TacticM (List (TSyntax `tactic)) :=
  return [
    ← `(tactic|try rfl),
    ← `(tactic|try decide),
    ← `(tactic|try simp [$(mkIdent name):ident]),
    ← `(tactic|try unfold $(mkIdent name):ident),
    ← `(tactic|try norm_num),
    ← `(tactic|try repeat omega),
    ← `(tactic|try ring),
    ← `(tactic|try aesop),
    ← `(tactic|try grind)

  ]


partial def dfsTactic
    (tactics  : List (TSyntax `tactic))
    (maxDepth : Nat)
    (depth    : Nat := 0)
    : TacticM Bool := do

  if depth > maxDepth then -- base case
    return false

  -- main loop
  for tac in tactics do
    -- get state of current goal
    let savedState ← saveState

    -- try to use tactic, every tactic is wrapped in a try so it shouldn't error out
    let ok ← try evalTactic tac; pure true catch _ => pure false
    if !ok then -- if it did fail, restore the state and continue to next tactic
      savedState.restore
      continue

    -- Otherwise, the tactic did not fail, so check if goals are closed
    -- if goals are closed, we're done
    if (← getUnsolvedGoals).isEmpty then
      return true

    -- Otherwise, goals remain, so recurs
    if ← dfsTactic tactics maxDepth (depth + 1) then
      return true

    -- Restore state and backtrack
    savedState.restore

  return false


def extractConstName : TacticM Name := do
-- Assumes we are proving a thm of the form f i = v for f : Nat -> $Cod, but we
--  should revisit this assumption.. we might want to make our tactic more general?
-- Extracts the name of the function f, for use in tactics like unfold, etc.
    let goal ← Lean.Elab.Tactic.getMainGoal
    let goalDecl ← goal.getDecl
    let goalType := goalDecl.type
    match (← inferTypeQ goalType) with
      | ⟨1, ~q(Prop), ~q(Eq (($f : Nat → $c) $idx) $value)⟩ =>
        if c.constName != `Nat && c.constName != `Int then
          Lean.Meta.throwTacticEx `oeis_tactic goal m!"wrong codomain {c}"
        return f.constName


elab "oeis_tactic_heavy" name?:(ident)? "depth" ":=" maxDepth:num ? : tactic => do
  let depth := maxDepth.map (·.getNat) |>.getD 3
  let name ← match name? with
    | some id => pure id.getId
    | none    => extractConstName
  let tactics ← makeTactics name
  let solved ← dfsTactic tactics depth
  unless solved do
    throwTacticEx `oeis_tactic (← getMainGoal)
      m!"oeis_tactic: no tactic combination (depth {depth}) closed the goal"



/-- Some Tests, most are passing but the last one will fail. -/

-- Very simple test
example : 1 + 1 = 2 := by
  oeis_tactic_heavy depth:=1


-- An OEIS example that needs decide
def f (n: Nat) : Nat := n.divisors.card

example : f 2 = 2 := by
  oeis_tactic_heavy depth:=1


-- The OEIS ruler example

def A001511 : (n : ℕ) → ℕ
| 0 => 0
| n + 1 =>
    if Even (n + 1)  then
      1 + A001511 ((n + 1) / 2)
    else
      1

example : A001511 1 = 1 := by
  oeis_tactic_heavy depth:= 1

example : A001511 2 = 2 := by
  oeis_tactic_heavy depth:= 1

example : A001511 3 = 1 := by
  oeis_tactic_heavy depth:= 1

example : A001511 4 = 3 := by
  oeis_tactic_heavy depth:= 1


def A001511v2 (n : ℕ) : ℕ :=
  Nat.factorization (2 * n) 2

example : A001511v2 1 = 1 := by
  oeis_tactic_heavy depth := 1

example : A001511v2 2 = 2 := by
  -- oeis_tactic_heavy depth := 2 /-- This one fails which makes sense since the actual proof requires a rw -/
  sorry
