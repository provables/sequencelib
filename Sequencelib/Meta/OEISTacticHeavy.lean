/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Mathlib

open Lean Expr Elab Term Tactic Meta Qq Command


def logToFile (msg : String) : TacticM Unit := do
  let path := "/tmp/oeis_tactic_log.txt"
  let h ← IO.FS.Handle.mk path IO.FS.Mode.append
  h.putStrLn msg


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

/-- Check whether a tactic has made progress -/
def madeProgress (goalsBefore : List MVarId) (typesBefore : List Expr) : TacticM Bool := do
  let goalsAfter ← getUnsolvedGoals
  -- Different number of goals is always progress
  if goalsAfter.length != goalsBefore.length then
    return true
  -- Same number of goals — check if any goal type actually changed
  for (goalBefore, typeBefore) in goalsBefore.zip typesBefore do
    if goalsAfter.contains goalBefore then
      let typeAfter ← goalBefore.getType
      if !(← Meta.isDefEq typeBefore typeAfter) then
        return true
    else
      -- if the goal id changed, we count that as progress
      return true
  return false

/-- Convert the current goal state to a string that can be used to build up
    previously seen goal states and compare with current state
-/
def serializeGoal : TacticM String := do
  let goals ← getUnsolvedGoals
  let strs ← goals.mapM fun g => do
    let type ← g.getType
    return toString (← Meta.ppExpr type) -- convert the goal to a string
  return strs.foldl (· ++ "||" ++ ·) "" -- concat all goal strs with the "||" delimiter

/-- Main function that implements the depth-first search across a tactic tree -/
partial def dfsTactic
    (tactics  : List (TSyntax `tactic))
    (maxDepth : Nat)
    (depth    : Nat := 0)
    (path     : List String := []) -- for logging
    (visitedStates : List String := [])  -- previously visited goal states
    : TacticM Bool := do

  if depth > maxDepth then -- base case
    return false

  let currentGoalStr ← serializeGoal -- string representation of the current goal

  -- main loop
  for tac in tactics do
    -- get state of current goal
    let savedState ← saveState

    -- Get goal types before trying next tactic
    let goalsBefore ← getUnsolvedGoals
    let typesBefore ← goalsBefore.mapM (·.getType)

    let tacStr := toString (← PrettyPrinter.ppTactic tac) -- for logging

    -- try to use tactic
    logToFile s!"Trying tactic: {tacStr}"
    let ok ← try
      evalTactic tac
      pure true
    catch e =>
      let msg ← e.toMessageData.toString
      if msg.contains "maximum number of heartbeats" then -- TODO: a bit of a hack
        logToFile s!"[TIMEOUT] path so far: {(path ++ [tacStr])}"
        savedState.restore
        return false  -- abort entire search since we hit the heartbeat limit
      logToFile s!"[EXCEPTION depth={depth}] {tacStr} threw, pruning"
      pure false -- some other exception, just set ok to false

    if !ok then -- if tactic failed, restore the state and continue to next tactic
      savedState.restore
      continue

    -- Otherwise, the tactic did not crash, so check if goals are closed and if it changed
    -- the goals at all
    if (← getUnsolvedGoals).isEmpty then  -- if goals are closed, we're done
      logToFile s!"[SUCCESS] path: {(path ++ [tacStr])}"
      logInfo m!"[SUCCESS] path: {(path ++ [tacStr])}"
      return true

    -- Check if goals have been changed at all
    if !(← madeProgress goalsBefore typesBefore) then
      logToFile s!"[NO PROGRESS depth={depth}] {tacStr} changed nothing so pruning"
      savedState.restore
      continue

    -- Get the resulting goal state from the application of the tactic and check if
    -- it has been visited before
    let newGoalStr ← serializeGoal
    if visitedStates.contains newGoalStr then
      -- if we have visited this state before, then we just created a cycle, so we need
      -- restore and move to the next tactic
      logToFile s!"[CYCLE depth={depth}] {tacStr} produced a previously seen goal state, pruning"
      savedState.restore
      continue

    -- Otherwise, goals remain, so recurs further down
    logToFile s!"[PROGRESS depth={depth}] {tacStr} made progress, going deeper"
    if ← dfsTactic tactics maxDepth (depth + 1) (path ++ [tacStr]) (visitedStates ++ [currentGoalStr]) then
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
  logToFile s!"Start of oeis_tactic_heavy for name: {name}"
  let tactics ← makeTactics name
  let solved ← dfsTactic tactics depth
  unless solved do
    throwTacticEx `oeis_tactic (← getMainGoal)
      m!"oeis_tactic: no tactic combination (depth {depth}) closed the goal"



/-- Some Tests, most are passing but the last one will fail. -/

-- Very simple test
-- example : 1 + 1 = 2 := by
--   oeis_tactic_heavy depth:=1


-- An OEIS example that needs decide
def f (n: Nat) : Nat := n.divisors.card

-- example : f 2 = 2 := by
--   oeis_tactic_heavy depth:=1


-- The OEIS ruler example
-- def A001511 : (n : ℕ) → ℕ
-- | 0 => 0
-- | n + 1 =>
--     if Even (n + 1)  then
--       1 + A001511 ((n + 1) / 2)
--     else
--       1

-- example : A001511 1 = 1 := by
--   oeis_tactic_heavy depth:= 1

-- example : A001511 2 = 2 := by
--   oeis_tactic_heavy depth:= 1

-- example : A001511 3 = 1 := by
--   oeis_tactic_heavy depth:= 1

-- example : A001511 4 = 3 := by
--   oeis_tactic_heavy depth:= 1


def A001511v2 (n : ℕ) : ℕ :=
  Nat.factorization (2 * n) 2

-- example : A001511v2 1 = 1 := by
--   oeis_tactic_heavy depth := 1

set_option maxHeartbeats 400000 in
example : A001511v2 2 = 2 := by
  oeis_tactic_heavy depth := 4


set_option maxHeartbeats 400000 in
example : A001511v2 3 = 1 := by oeis_tactic_heavy depth := 4

set_option maxHeartbeats 400000 in
example : A001511v2 4 = 3 := by oeis_tactic_heavy depth := 4

example : A001511v2 2 = 2 := by
  unfold A001511v2
  rw [Nat.factorization_mul]
  norm_num
  norm_num
  repeat omega

example : A001511v2 2 = 2 := by
  unfold A001511v2
  rw [Nat.factorization_mul]
  norm_num
  repeat omega

example: A001511v2 3 = 1 := by
  unfold A001511v2
  rw [Nat.mul_comm]
  rw [Nat.factorization_mul]
  norm_num
  repeat omega

example : A001511v2 4 = 3 := by
  unfold A001511v2
  simp
