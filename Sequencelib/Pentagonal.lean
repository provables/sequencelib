/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# Pentagonal numbers

-/

namespace Sequence

/--
Pentagonal numbers:
$$
\mathrm{Pentagonal}(n) = \frac{n (3n - 1)}{2}.
$$
-/
@[OEIS := A000326]
def Pentagonal (n : ℕ) : ℕ := n * (3 * n - 1) / 2

theorem Pentagonal_zero : Pentagonal 0 = 0 := rfl
theorem Pentagonal_one : Pentagonal 1 = 1 := rfl
theorem Pentagonal_two : Pentagonal 2 = 5 := rfl
theorem Pentagonal_three : Pentagonal 3 = 12 := rfl
theorem Pentagonal_four : Pentagonal 4 = 22 := rfl
theorem Pentagonal_five : Pentagonal 5 = 35 := rfl
