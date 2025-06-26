/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Mersenne Numbers

(Not to be confused with Mersenne Primes.)
-/

namespace Sequence

/--
`a(n) = 2^n -1`.
-/
@[OEIS := A000225, offset := 0]
def MersenneNumber (n : ℕ) : ℕ := 2 ^ n - 1

theorem MersenneNumber_zero : MersenneNumber 0 = 0 := rfl
theorem MersenneNumber_one : MersenneNumber 1 = 1 := rfl
theorem MersenneNumber_two : MersenneNumber 2 = 3 := rfl
theorem MersenneNumber_three : MersenneNumber 3 = 7 := rfl
theorem MersenneNumber_four : MersenneNumber 4 = 15 := rfl

/--
Number of non-empty subsets of a set of cardinality `n`.
-/
@[OEIS := A000225, offset := 0]
def NonEmptySubsets (n : ℕ) : ℕ := {X ∈ (Finset.range n).powerset | X.Nonempty}.card

theorem MersenneNumber_eq_NonEmptySubsets : MersenneNumber = NonEmptySubsets := by
  unfold MersenneNumber NonEmptySubsets
  ext n
  have := Finset.card_erase_of_mem (Finset.empty_mem_powerset (Finset.range n))
  rw [Finset.card_powerset _, Finset.card_range] at this
  rw [← this]
  congr
  ext X
  simp only [Finset.mem_erase, ne_eq, Finset.mem_powerset, Finset.mem_filter,
    Finset.nonempty_iff_ne_empty, And.comm]
