import Mathlib
import Sequencelib.Meta

/-!
# Sigma_1

The sum of the divisors of n.

-/

@[OEIS := A000203, offset := 1, maxIndex := 100, derive := true]
def Sigma1 (n : ℕ) : ℕ := ∑ d ∈ n.divisors, d
