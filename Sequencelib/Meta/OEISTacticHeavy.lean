/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Qq
import Mathlib

open Lean Expr Elab Term Tactic Meta Qq Command


def logToFile (msg : String) (depth : Nat := 0) (logFile : Option System.FilePath := none) :
    TacticM Unit := do
  if let some path := logFile then
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
  ``Nat.succ_add,
]

def applyThms : List Name := [
  ``Nat.Prime.factorization_self,
  ``Nat.Prime.factorization,
  ``Nat.factorization_pow,
  ``Nat.factorization_mul,
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

/-- Build rw, simp and apply tactic candidates from the corresponding
    theorem lists above.
-/
def makeRwTactics (thms : List Name) : TacticM (List (TSyntax `tactic)) :=
  thms.mapM fun thmName =>
    `(tactic| rw [$(mkIdent thmName):ident])

def makeSimpTactics (thms : List Name) : TacticM (List (TSyntax `tactic)) :=
  thms.mapM fun thmName =>
    `(tactic| simp only [$(mkIdent thmName):ident])

def makeApplyTactics (lemmas : List Name) : TacticM (List (TSyntax `tactic)) :=
  lemmas.mapM fun lemName =>
    `(tactic| apply $(mkIdent lemName))


/--
This function defines the full list of tactics that oeis_tactic_heavy will use.
Note that order of tactic matters, as the main dfsTactic function performs a
depth-first search starting with the first tactic in the list.

Note also that `try` should be avoided in the tactic list for this implementation,
as we rely on a tactic failing to know when to backtrack.
-/
def makeTactics (name : Name) : TacticM (List (TSyntax `tactic)) := do
  return (← tactics name |>.mapM id) ++ (← makeRwTactics rwThms) ++ (← makeSimpTactics simpThms) ++ (← makeApplyTactics applyThms)


/-  Dynamic Tactics. Here we develop some helper functions -/
/-- Check if n = b^k for some k >= 2, returns k if so -/
def isPrimePower (n : Nat) (b : Nat) : Option Nat :=
  if b < 2 then none
  else
    let k := Nat.log b n
    if b ^ k == n && k >= 2 then some k else none

/-- Get all prime factors of n -/
def getPrimeFactors (n : Nat) : List Nat :=
  (List.range n).filter fun p =>
    p >= 2 && Nat.Prime p && n % p == 0

/-- Generate all ways to write n as a product of two factors a * b
    where both a and b are >= 2 -/
def factorPairs (n : Nat) : List (Nat × Nat) :=
  (List.range n).filterMap fun a =>
    if a < 2 then none
    else
      let b := n / a
      if b >= 2 && a * b == n && a <= b then some (a, b)
      else none

/-- Collect all natural number literals appearing in an expression -/
def collectNatLiterals (e : Expr) : List Nat :=
  match e with
  | Expr.lit (Literal.natVal n) => if n >= 2 then [n] else []
  | Expr.app f a => collectNatLiterals f ++ collectNatLiterals a
  | _ => []

/-- Generate rewrite tactics for numeric literals in the current goal.
    For each literal n, generates `rw [show n = b^k by norm_num]`
    for each prime base b and exponent k such that b^k = n -/
def makeNumericRewrites : TacticM (List (TSyntax `tactic)) := do
  let goal ← getMainGoal
  let goalType ← goal.getType
  let literals := (collectNatLiterals goalType).eraseDups
  let mut tactics := []
  for n in literals do
    for b in getPrimeFactors n do
      let k := Nat.log b n
      if b ^ k == n && k >= 2 then
        let nStx := Syntax.mkNumLit (toString n)
        let bStx := Syntax.mkNumLit (toString b)
        let kStx := Syntax.mkNumLit (toString k)
        let tac ← `(tactic| rw [show ($nStx : ℕ) = $bStx ^ $kStx by norm_num])
        tactics := tactics ++ [tac]
    -- Product rewrites: n = a * b
    for (a, b) in factorPairs n do
      let nStx := Syntax.mkNumLit (toString n)
      let aStx := Syntax.mkNumLit (toString a)
      let bStx := Syntax.mkNumLit (toString b)
      let tac ← `(tactic| rw [show ($nStx : ℕ) = $aStx * $bStx by norm_num])
      tactics := tactics ++ [tac]
  return tactics


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


/-- A visited state entry tracking the remaining depth when it was explored -/
structure VisitedEntry where
  fingerprint    : String
  depthRemaining : Nat
  deriving Repr

/-- A state should only be pruned if we previously explored it with
    at least as much remaining depth as we currently have -/
def shouldPrune (visited : List VisitedEntry) (fingerprint : String)
    (depthRemaining : Nat) : Bool :=
  -- Pass an anonymous function to visited.any
  -- The function simply checks if the fingerprints are the same and the depth is at least as much
  visited.any fun e => e.fingerprint == fingerprint && e.depthRemaining >= depthRemaining


/-- Main function that implements the depth-first search across a tactic tree -/
partial def dfsTactic
    (staticTactics  : List (TSyntax `tactic))
    (maxDepth : Nat)
    (visitedStates  : IO.Ref (List VisitedEntry))   -- previously visited goal states
    (depth    : Nat := 0)
    (path     : List String := []) -- for logging
    (pathStates    : List String := [])  -- states on current path only
    (logFile : Option System.FilePath)
    : TacticM Bool := do

  if depth >= maxDepth then -- base case
    return false

  let depthRemaining := maxDepth - depth

  let currentGoalStr ← serializeGoal -- string representation of the current goal

  -- Check 1: is current state already on our current path? (cycle detection)
  if pathStates.contains currentGoalStr then
    logToFile s!"[PATH CYCLE depth={depth}] current state already on path, pruning" (logFile := logFile)
    return false

  -- Check 2: have we fully explored this state with the same or more remaining depth
  let visited ← visitedStates.get
  if shouldPrune visited currentGoalStr depthRemaining then
    logToFile s!"[GLOBAL PRUNE depth={depth}] already explored with sufficient depth"
    return false

  -- Compute dynamic tactics at each node
  let dynamicTactics ← makeNumericRewrites
  logToFile s!"Dynamic tactics at depth={depth}: {dynamicTactics.map (toString)}"
  let tactics := staticTactics ++ dynamicTactics

  -- main loop
  for tac in tactics do
    -- get state of current goal
    let savedState ← saveState

    -- Get goal types before trying next tactic
    let goalsBefore ← getUnsolvedGoals
    let typesBefore ← goalsBefore.mapM (·.getType)

    let tacStr := toString (← PrettyPrinter.ppTactic tac) -- for logging

    -- try to use tactic
    logToFile s!"Trying tactic: {tacStr}" depth (logFile := logFile)
    let ok ← try
      evalTactic tac
      pure true
    catch e =>
      let msg ← e.toMessageData.toString
      if msg.contains "maximum number of heartbeats" then -- TODO: a bit of a hack
        logToFile s!"[TIMEOUT] path so far: {(path ++ [tacStr])}" depth (logFile := logFile)
        savedState.restore
        return false  -- abort entire search since we hit the heartbeat limit
      logToFile s!"[EXCEPTION depth={depth}] {tacStr} threw, pruning" depth (logFile := logFile)
      pure false -- some other exception, just set ok to false

    if !ok then -- if tactic failed, restore the state and continue to next tactic
      savedState.restore
      continue

    -- Otherwise, the tactic did not crash, so check if goals are closed and if it changed
    -- the goals at all
    if (← getUnsolvedGoals).isEmpty then  -- if goals are closed, we're done
      logToFile s!"[SUCCESS] path: {(path ++ [tacStr])}" depth (logFile := logFile)
      logInfo m!"[SUCCESS] path: {(path ++ [tacStr])}"
      return true

    -- Check if goals have been changed at all
    if !(← madeProgress goalsBefore typesBefore) then
      logToFile s!"[NO PROGRESS depth={depth}] {tacStr} changed nothing so pruning" depth (logFile := logFile)
      savedState.restore
      continue

    -- Get the resulting goal state from the application of the tactic and check if
    -- it has been visited before
    let newGoalStr ← serializeGoal

    -- Check new state against current path only (not global visited)
    if pathStates.contains newGoalStr then
      logToFile s!"[PATH CYCLE depth={depth}] {tacStr} produced state already on path" (logFile := logFile)
      savedState.restore
      continue

    -- Check new state against global visited
    let visited ← visitedStates.get
    if shouldPrune visited newGoalStr (depthRemaining - 1) then
      -- if we have visited this state before, then we just created a cycle, so we need
      -- restore and move to the next tactic
      logToFile s!"[GLOBAL PRUNE depth={depth}] {tacStr} produced already-explored state" (logFile := logFile)
      savedState.restore
      continue

    -- Otherwise, goals remain, so add goal to visitedStates and recurs further down
    logToFile s!"[PROGRESS depth={depth}] {tacStr} made progress, going deeper"
    if ← dfsTactic tactics maxDepth visitedStates (depth + 1) (path ++ [tacStr]) (pathStates ++ [currentGoalStr]) (logFile := logFile) then
      return true

    -- Current tactic failed, so record new state as exhausted with depthRemaining - 1
    -- However, only add if not already recorded with equal or greater depth
    let visited ← visitedStates.get
    unless shouldPrune visited newGoalStr (depthRemaining - 1) do
      visitedStates.modify ({ fingerprint := newGoalStr,
                              depthRemaining := depthRemaining - 1 } :: ·)
      logToFile s!"[VISITED ADD] depth={depth} depthRemaining={depthRemaining - 1} state={newGoalStr}"

    savedState.restore

  -- Entire node has been tried and failed, so record current state as
  -- exhausted with current depthRemaining.
  -- However, as before, only add if not already recorded with equal or greater depth.
  let visited ← visitedStates.get
  unless shouldPrune visited currentGoalStr depthRemaining do
    visitedStates.modify ({ fingerprint := currentGoalStr,
                            depthRemaining := depthRemaining } :: ·)
    logToFile s!"[VISITED ADD] depth={depth} depthRemaining={depthRemaining} state={currentGoalStr}"
  return false

/-- Get the head constant (i.e., outermost function) associated with an expression.
    Note that Expr functions are defined using Expr.app and are always unary.
    Thus, for multi-argument functions, the Expr.app's get nested.
    Ex:
    A001511v2 1
    = Expr.app (Expr.const `A001511v2 _) (Expr.lit 1)

    And:
    primeFactors 9 3
    = Expr.app (Expr.app (Expr.const `primeFactors _) 9) 3

-/
def extractHeadFunctionConst (e : Expr) : Option Name :=
  match e with
  | Expr.const name _ => some name -- we found a function, so return it
  | Expr.app f _      => extractHeadFunctionConst f  -- we're still applying functions, so strip off and recurs
  | _                 => none -- it wasn't a function, return none


/-- Assuming the goal is of the form LHS = RHS, extracts the name of a function from
    the LHS.
-/
def extractFuncName : TacticM Name := do
  let goal ← getMainGoal
  let goalType ← goal.getType
  -- We're looking for a goal of the form LHS = RHS
  -- Note: Eq takes 3 arguments: type, LHS and RHS
  match goalType with
  | Expr.app (Expr.app (Expr.app (Expr.const `Eq _) _) lhs) _ =>
    -- Goal is `Eq T lhs rhs`
    match extractHeadFunctionConst lhs with
    | some name => return name
    | none => throwError "oeis_tactic: could not extract constant from LHS: {← Meta.ppExpr lhs}"
  | _ =>
    throwError "oeis_tactic: goal is not an equality, got: {← Meta.ppExpr goalType}"


/-- NOTE: deprecated in favor of the new extractFuncName -/
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

syntax oeis_tactic_option := (&"depth" ":=" num) <|> (&"logFile" ":=" str) <|> ident
syntax oeis_tactic_options := oeis_tactic_option,*,?

elab "oeis_tactic_heavy" opts?:oeis_tactic_options : tactic => do
  let mut name ← extractFuncName
  let mut depth := 1
  let mut logFile := none
  match opts? with
  | `(oeis_tactic_options|$[$args:oeis_tactic_option],*) =>
    for arg in args do
      match arg with
      | `(oeis_tactic_option|depth := $n:num) => depth := n.getNat
      | `(oeis_tactic_option|logFile := $lf:str) => logFile := some lf.getString
      | `(oeis_tactic_option|$n:ident) => name := n.getId
      | e => throwError "unrecognized option `{e}`"
  | e => throwError "wrong options syntax `{e}`"

  let visitedStates ← IO.mkRef ([] : List VisitedEntry)
  logToFile s!"Start of oeis_tactic_heavy for name: {name}; fresh visitedStates ref created"
  let initialVisited ← visitedStates.get
  logToFile s!"Initial visited size: {initialVisited.length}" (logFile := logFile)

  let staticTactics ← makeTactics name
  let solved ← dfsTactic staticTactics depth visitedStates (logFile := logFile)
  unless solved do
    throwTacticEx `oeis_tactic (← getMainGoal)
      m!"oeis_tactic: no tactic combination (depth {depth}) closed the goal"
