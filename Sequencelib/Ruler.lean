/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/
import Mathlib
import Sequencelib.Meta

/-!
# The Ruler function

The ruler function: exponent of the highest power of 2 dividing 2n.
Equivalently, the 2-adic valuation of 2n.
-/

namespace Sequence

open Nat

/-- Ruler function -/
@[OEIS := A001511, offset := 1, maxIndex := 2, derive := true]
def A001511 : (n : ℕ) → ℕ
| 0 => 0
| n + 1 =>
    if Even (n + 1)  then
      1 + A001511 ((n + 1) / 2)
    else
      1

@[OEIS := A001511, offset := 1]
def A001511v2 (n : ℕ) : ℕ :=
  Nat.factorization (2 * n) 2

theorem A001511v2_one : A001511v2 1 = 1 := by
  unfold A001511v2
  norm_num

theorem A001511v2_two : A001511v2 2 = 2 := by
  unfold A001511v2
  rw [Nat.factorization_mul]
  norm_num
  repeat omega

theorem A001511_eq_A001511v2 : A001511 = A001511v2 := by
  ext n
  induction n using Nat.strongRec with
  | ind v hv =>
    unfold A001511 A001511v2
    split
    · simp
    · next h m =>
        norm_num
        split_ifs with hi
        · obtain ⟨j, hj⟩ : ∃ k, m + 1 = 2 * k := Even.exists_two_nsmul _ hi
          simp [hj, hv j (by omega)]
          rfl
        · simp [hi]
          exact factorization_eq_zero_of_not_dvd <| Odd.not_two_dvd_nat <| not_even_iff_odd.mp hi
