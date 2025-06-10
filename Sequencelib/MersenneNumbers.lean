/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Mersenne Numbers
-/

namespace Sequence

@[OEIS := A001348, offset := 0]
def MersenneNumber (n : ℕ) : ℕ := 2 ^ n - 1

theorem MersenneNumber_zero : MersenneNumber 0 = 0 := rfl
theorem MersenneNumber_one : MersenneNumber 1 = 1 := rfl
theorem MersenneNumber_two : MersenneNumber 2 = 3 := rfl
theorem MersenneNumber_three : MersenneNumber 3 = 7 := rfl
theorem MersenneNumber_four : MersenneNumber 4 = 15 := rfl

open Cardinal

@[OEIS := A001348, offset := 0]
def NonEmptySubsets (n : ℕ) : ℕ := Finset.card { X ∈ (Finset.range n).powerset | X.Nonempty }

theorem MersenneNumber_eq_NonEmptySubsets : MersenneNumber = NonEmptySubsets := by
  unfold MersenneNumber NonEmptySubsets
  ext n
  have := Finset.card_erase_of_mem (Finset.empty_mem_powerset (Finset.range n))
  rw [Finset.card_powerset _, Finset.card_range] at this
  rw [← this]
  congr
  ext X
  constructor
  · intro h
    simp only [Finset.mem_filter, Finset.mem_powerset]
    simp at h
    exact ⟨h.right, Finset.nonempty_of_ne_empty h.left⟩
  · intro h
    simp
    simp at h
    exact ⟨Finset.nonempty_iff_ne_empty.mp h.right, h.left⟩
