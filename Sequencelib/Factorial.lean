/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/

import Mathlib
import Sequencelib.Meta

/-!
# Factorials
-/

namespace Sequence

/--
 Factorials: `a(n) = n!`, with initial conditions `a(0) = 1`.
-/
@[OEIS := A000142]
def Factorial : ℕ → ℕ := Nat.factorial

theorem Factorial_zero : Factorial 0 = 1 := rfl
theorem Factorial_one : Factorial 1 = 1 := rfl
theorem Factorial_two : Factorial 2 = 2 := rfl
theorem Factorial_three : Factorial 3 = 6 := rfl
theorem Factorial_four : Factorial 4 = 24 := rfl
theorem Factorial_five : Factorial 5 = 120 := rfl
