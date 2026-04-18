import Sequencelib.Meta.OEISTacticHeavy

/-!
Tests for oeis_tactic_heavy
-/


example : (1 : ℕ) + 1 = 2 := by oeis_tactic_heavy depth := 2

example : (10 : ℕ) * 10 = 100 := by oeis_tactic_heavy depth := 2

/-- omega should close this at depth 1 -/
example : (5 : ℕ) + 3 = 8 := by oeis_tactic_heavy depth := 2


/-- Ruler value theorems


   Regression tests -- The initial ruler implementation
   (original oeis_tactic can do these)
-/
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
  oeis_tactic_heavy depth:= 3

example : A001511 4 = 3 := by
  oeis_tactic_heavy depth:= 3


/-- The second ruler implementation based on Mathlib
    The original tactic couldn't do these
-/
def A001511v2 (n : ℕ) : ℕ := Nat.factorization (2 * n) 2

example : A001511v2 1 = 1 := by oeis_tactic_heavy depth := 2

example : A001511v2 2 = 2 := by oeis_tactic_heavy depth := 5

example : A001511v2 3 = 1 := by oeis_tactic_heavy depth := 5

-- An example that needs an increase in maxHeartbeats, still fails at
-- depth up to 15
-- set_option maxHeartbeats 8000000 in
-- example : A001511v2 4 = 3 := by oeis_tactic_heavy depth := 15

/-- Some additional examples from the previous tactic -/

-- An OEIS example that needs decide
def f (n: Nat) : Nat := n.divisors.card

example : f 2 = 2 := by
  oeis_tactic_heavy depth:=1



/-- Doubly indexed sequence; use primeFactors as an example
-/
def primeFactors (n : ℕ) (p : ℕ) := Nat.factorization n p

example : primeFactors 2 2 = 1 := by oeis_tactic_heavy depth := 4

/-- Good goal for the next version -- this one cannot currently be done with
    oeis_tactic_heavy
-/
example : primeFactors 9 3 = 2 := by
  unfold primeFactors
  rw [show (9 : ℕ) = 3^2 by norm_num]
  rw [Nat.factorization_pow]
  simp
  exact Nat.Prime.factorization_self (by norm_num)
