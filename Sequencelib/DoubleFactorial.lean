/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/

import Mathlib
import Sequencelib.Meta

/-!
# Double Factorials
-/

namespace Sequence

/--
Double Factorials: `a(n) = n * a(n-2)`, with initial conditions `a(0) = a(1) = 1`.
-/
@[OEIS := A006882]
def DoubleFactorial : ℕ → ℕ
  | 0 => 1
  | 1 => 1
  | n + 2 => (n + 2) * DoubleFactorial n

theorem DoubleFactorial_zero : DoubleFactorial 0 = 1 := rfl
theorem DoubleFactorial_one : DoubleFactorial 1 = 1 := rfl
theorem DoubleFactorial_two : DoubleFactorial 2 = 2 := rfl
theorem DoubleFactorial_three : DoubleFactorial 3 = 3 := rfl
theorem DoubleFactorial_four : DoubleFactorial 4 = 8 := rfl
theorem DoubleFactorial_five : DoubleFactorial 5 = 15 := rfl
