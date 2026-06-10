import Mathlib
import Sequencelib.Meta

/-!
# Big Omega

The number of prime divisors of n counted with multiplicity.

-/

open Nat

@[OEIS := A001222, offset := 1]
def BigOmega (n : ℕ) : ℕ := (Nat.factorization n).sum (fun _ i => i)

local macro "prove_bigomega" : tactic =>
  `(tactic| (
    unfold BigOmega
    rw [factorization_eq_primeFactorsList_multiset]
    simp only [primeFactorsList_ofNat]
    decide
  ))

theorem BigOmega_one : BigOmega 1 = 0 := by prove_bigomega
theorem BigOmega_two : BigOmega 2 = 1 := by prove_bigomega
theorem BigOmega_three : BigOmega 3 = 1 := by prove_bigomega
theorem BigOmega_four : BigOmega 4 = 2 := by prove_bigomega
theorem BigOmega_five : BigOmega 5 = 1 := by prove_bigomega
theorem BigOmega_six : BigOmega 6 = 2 := by prove_bigomega
theorem BigOmega_seven : BigOmega 7 = 1 := by prove_bigomega
theorem BigOmega_eight : BigOmega 8 = 3 := by prove_bigomega
theorem BigOmega_nine : BigOmega 9 = 2 := by prove_bigomega
theorem BigOmega_ten : BigOmega 10 = 2 := by prove_bigomega
theorem BigOmega_eleven : BigOmega 11 = 1 := by prove_bigomega
theorem BigOmega_twelve : BigOmega 12 = 3 := by prove_bigomega
