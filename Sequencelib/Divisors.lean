/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/--
The number of divisors of `n`, also called `d(n)` or `tau(n)` or `sigma_0(n)`.
-/
@[OEIS := A000005, offset := 1]
def Divisors (n : ℕ) := n.divisors.card

theorem Divisors_one : Divisors 1 = 1 := by decide

theorem Divisors_two : Divisors 2 = 2 := by decide

theorem Divisors_three : Divisors 3 = 2 := by decide

theorem Divisors_four : Divisors 4 = 3 := by decide

theorem Divisors_five : Divisors 5 = 2 := by decide

theorem Divisors_six : Divisors 6 = 4 := by decide

theorem Divisors_seven : Divisors 7 = 2 := by decide

theorem Divisors_eight : Divisors 8 = 4 := by decide

theorem Divisors_nine : Divisors 9 = 3 := by decide

theorem Divisors_ten : Divisors 10 = 4 := by decide
