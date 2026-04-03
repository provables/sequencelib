/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Mathlib

open Lean Expr Elab Term Tactic Meta Qq Command

def rwThms : List Name := [
  ``Nat.add_comm,
  ``Nat.add_assoc,
  ``Nat.mul_comm,
  ``Nat.mul_assoc,
  ``Nat.add_zero,
  ``Nat.factorization_mul,
  ``Nat.zero_add,
  ``Nat.mul_one,
  ``Nat.one_mul,
  ``Nat.mul_add,
  ``Nat.add_mul,
  ``Nat.pow_succ,
  ``Nat.pow_zero,
  ``Nat.succ_eq_add_one,
  ``Nat.add_succ,
  ``Nat.succ_add
]

def tactics (name : Name) : List (TacticM (TSyntax `tactic)) := [
  `(tactic| rfl),
  `(tactic| decide),
  `(tactic| simp [$(mkIdent name):ident]),
  `(tactic| unfold $(mkIdent name):ident),
  `(tactic| norm_num),
  `(tactic| repeat omega),
  `(tactic| ring),
  `(tactic| aesop),
  `(tactic| grind)
]

/-- Build rw tactic candidates from the curated theorem list. -/
def makeRwTactics (thms : List Name) : TacticM (List (TSyntax `tactic)) :=
  thms.mapM fun thmName =>
    `(tactic| rw [$(mkIdent thmName):ident])

/--
This function defines the full list of tactics that oeis_tactic_heavy will use.
Note that order of tactic matters, as the main dfsTactic function performs a
depth-first search starting with the first tactic in the list.

Note also that `try` should be avoided in the tactic list for this implementation,
as we rely on a tactic failing to know when to backtrack.
-/
def makeTactics (name : Name) : TacticM (List (TSyntax `tactic)) := do
  return (← tactics name |>.mapM id) ++ (← makeRwTactics rwThms)

/-- Main function that implements the depth-first search across a tactic tree -/
partial def dfsTactic
    (tactics  : List (TSyntax `tactic))
    (maxDepth : Nat)
    (depth    : Nat := 0)
    (path     : List String := []) -- for logging
    : TacticM Bool := do

  if depth > maxDepth then -- base case
    return false

  -- main loop
  for tac in tactics do
    -- get state of current goal
    let savedState ← saveState
    let tacStr := toString (← PrettyPrinter.ppTactic tac)

    -- try to use tactic
    let ok ← try
      evalTactic tac
      pure true
    catch e =>
      let msg ← e.toMessageData.toString
      if msg.contains "maximum number of heartbeats" then -- TODO: a bit of a hack
        logInfo m!"[TIMEOUT] path so far: {(path ++ [tacStr])}"
        savedState.restore
        return false  -- abort entire search since we hit the heartbeat limit
      pure false -- some other exception, just set ok to false

    if !ok then -- if tactic failed, restore the state and continue to next tactic
      savedState.restore
      continue

    -- Otherwise, the tactic did not fail, so check if goals are closed
    if (← getUnsolvedGoals).isEmpty then  -- if goals are closed, we're done
      logInfo m!"[SUCCESS] path: {(path ++ [tacStr])}"
      return true

    -- Otherwise, goals remain, so recurs further down
    logInfo m!"[PROGRESS depth={depth}] {tacStr} made progress, going deeper"
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


-- TODO: depth isn't optional, something wrong with my syntax..
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

set_option maxHeartbeats 800000 in
example : A001511v2 2 = 2 := by
  oeis_tactic_heavy depth := 4

example : A001511v2 2 = 2 := by
  unfold A001511v2
  rw [Nat.factorization_mul]
  norm_num
  repeat omega
