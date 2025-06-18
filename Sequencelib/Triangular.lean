/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# Triangular numbers

-/

namespace Sequence

/--
Triangular numbers:
$$
\mathrm{Triangular}(n) = \frac{n (n + 1)}{2}.
$$
-/
@[OEIS := A000217]
def Triangular (n : ℕ) : ℕ := n * (n + 1) / 2

theorem Triangular_zero : Triangular 0 = 0 := rfl
theorem Triangular_one : Triangular 1 = 1 := rfl
theorem Triangular_two : Triangular 2 = 3 := rfl
theorem Triangular_three : Triangular 3 = 6 := rfl
theorem Triangular_four : Triangular 4 = 10 := rfl
theorem Triangular_five : Triangular 5 = 15 := rfl

/--
Triangular numbers from the binomial coefficient:
$$
\mathrm{Triangular}(n) = \binom{n+1}{2}
$$
-/
@[OEIS := A000217]
def TriangularChooseTwo (n : ℕ) : ℕ := (n + 1).choose 2

theorem Triangular_eq_TriangularChooseTwo : Triangular = TriangularChooseTwo := by
  ext n
  simp [Triangular, TriangularChooseTwo, Nat.choose_two_right (n + 1)]
  congr 1
  ring
