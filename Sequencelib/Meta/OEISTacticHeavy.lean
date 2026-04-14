/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Mathlib

open Lean Expr Elab Term Tactic Meta Qq Command


def logToFile (msg : String) (depth : Nat := 0) : TacticM Unit := do
  let path := "/tmp/oeis_tactic_log.txt"
  let h ← IO.FS.Handle.mk path IO.FS.Mode.append
  let depthStr := String.replicate (2 * depth) '.'
  h.putStrLn s!"{depthStr}{msg}"


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

def simpThms : List Name := [
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

def makeSimpTactics (thms : List Name) : TacticM (List (TSyntax `tactic)) :=
  thms.mapM fun thmName =>
    `(tactic| simp only [$(mkIdent thmName):ident])


/--
This function defines the full list of tactics that oeis_tactic_heavy will use.
Note that order of tactic matters, as the main dfsTactic function performs a
depth-first search starting with the first tactic in the list.

Note also that `try` should be avoided in the tactic list for this implementation,
as we rely on a tactic failing to know when to backtrack.
-/
def makeTactics (name : Name) : TacticM (List (TSyntax `tactic)) := do
  return (← tactics name |>.mapM id) ++ (← makeRwTactics rwThms) ++ (← makeSimpTactics simpThms)

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
    (visitedStates  : IO.Ref (List String))   -- previously visited goal states
    (depth    : Nat := 0)
    (path     : List String := []) -- for logging
    (pathStates    : List String := [])  -- states on current path only
    : TacticM Bool := do

  if depth >= maxDepth then -- base case
    return false

  let currentGoalStr ← serializeGoal -- string representation of the current goal
  -- Check 1: is current state already on our current path? (cycle detection)
  if pathStates.contains currentGoalStr then
    logToFile s!"[PATH CYCLE depth={depth}] current state already on path, pruning"
    return false

  -- Check 2: have we fully explored this state globally before?
  let visited ← visitedStates.get
  if visited.contains currentGoalStr then
    logToFile s!"[GLOBAL PRUNE depth={depth}] already fully explored, pruning"
    return false

  -- main loop
  for tac in tactics do
    -- get state of current goal
    let savedState ← saveState

    -- Get goal types before trying next tactic
    let goalsBefore ← getUnsolvedGoals
    let typesBefore ← goalsBefore.mapM (·.getType)

    let tacStr := toString (← PrettyPrinter.ppTactic tac) -- for logging

    -- try to use tactic
    logToFile s!"Trying tactic: {tacStr}" depth
    let ok ← try
      evalTactic tac
      pure true
    catch e =>
      let msg ← e.toMessageData.toString
      if msg.contains "maximum number of heartbeats" then -- TODO: a bit of a hack
        logToFile s!"[TIMEOUT] path so far: {(path ++ [tacStr])}" depth
        savedState.restore
        return false  -- abort entire search since we hit the heartbeat limit
      logToFile s!"[EXCEPTION depth={depth}] {tacStr} threw, pruning" depth
      pure false -- some other exception, just set ok to false

    if !ok then -- if tactic failed, restore the state and continue to next tactic
      savedState.restore
      continue

    -- Otherwise, the tactic did not crash, so check if goals are closed and if it changed
    -- the goals at all
    if (← getUnsolvedGoals).isEmpty then  -- if goals are closed, we're done
      logToFile s!"[SUCCESS] path: {(path ++ [tacStr])}" depth
      logInfo m!"[SUCCESS] path: {(path ++ [tacStr])}"
      return true

    -- Check if goals have been changed at all
    if !(← madeProgress goalsBefore typesBefore) then
      logToFile s!"[NO PROGRESS depth={depth}] {tacStr} changed nothing so pruning" depth
      savedState.restore
      continue

    -- Get the resulting goal state from the application of the tactic and check if
    -- it has been visited before
    let newGoalStr ← serializeGoal

    -- Check new state against current path only (not global visited)
    if pathStates.contains newGoalStr then
      logToFile s!"[PATH CYCLE depth={depth}] {tacStr} produced state already on path"
      savedState.restore
      continue

    -- Check new state against global visited
    let visited ← visitedStates.get
    if visited.contains newGoalStr then
      -- if we have visited this state before, then we just created a cycle, so we need
      -- restore and move to the next tactic
      logToFile s!"[GLOBAL PRUNE depth={depth}] {tacStr} produced already-explored state"
      savedState.restore
      continue

    -- Otherwise, goals remain, so add goal to visitedStates and recurs further down
    logToFile s!"[PROGRESS depth={depth}] {tacStr} made progress, going deeper"
    if ← dfsTactic tactics maxDepth visitedStates (depth + 1) (path ++ [tacStr]) (pathStates ++ [currentGoalStr]) then
      return true

    -- Subtree failed: record newGoalStr as fully explored
    visitedStates.modify (newGoalStr :: ·)
    savedState.restore

  -- Current state fully explored and failed: record it
  visitedStates.modify (currentGoalStr :: ·)
  return false

#check IO.getNumHeartbeats

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

syntax oeis_tactic_option := (&"depth" ":=" num) <|> ident
syntax oeis_tactic_options := oeis_tactic_option,*,?

elab "oeis_tactic_heavy" opts?:oeis_tactic_options : tactic => do
  let mut name ← extractConstName
  let mut depth := 1
  match opts? with
  | `(oeis_tactic_options|$[$args:oeis_tactic_option],*) =>
    for arg in args do
      match arg with
      | `(oeis_tactic_option|depth := $n:num) => depth := n.getNat
      | `(oeis_tactic_option|$n:ident) => name := n.getId
      | e => throwError "unrecognized option `{e}`"
  | e => throwError "wrong options syntax `{e}`"

  let visitedStates ← IO.mkRef ([] : List String)
  logToFile s!"Start of oeis_tactic_heavy for name: {name}; fresh visitedStates ref created"
  let initialVisited ← visitedStates.get
  logToFile s!"Initial visited size: {initialVisited.length}"

  let tactics ← makeTactics name
  let solved ← dfsTactic tactics depth visitedStates
  unless solved do
    throwTacticEx `oeis_tactic (← getMainGoal)
      m!"oeis_tactic: no tactic combination (depth {depth}) closed the goal"



/-- Some Tests, most are passing but the last one will fail. -/

-- Very simple test
example : 1 + 1 = 2 := by
   oeis_tactic_heavy


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
  oeis_tactic_heavy depth := 5

-- example : A001511v2 2 = 2 := by
--   unfold A001511v2
--   rw [Nat.mul_comm]
--   simp [A001511v2]

-- set_option maxHeartbeats 400000 in
-- example : A001511v2 3 = 1 := by oeis_tactic_heavy depth := 4

-- set_option maxHeartbeats 8000000 in
-- example : A001511v2 4 = 3 := by oeis_tactic_heavy depth := 8

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

#check Nat.factorization
