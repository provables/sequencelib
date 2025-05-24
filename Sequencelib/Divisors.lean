/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The number of divisors of `n`, also called `d(n)` or `tau(n)` or `sigma_0(n)`.
-/
@[OEIS := A000005, offset := 1]
def divisors (n : ℕ) := n.divisors.card

theorem divisors_one : divisors 1 = 1 := by decide

theorem divisors_two : divisors 2 = 2 := by decide

theorem divisors_three : divisors 3 = 2 := by decide

theorem divisors_four : divisors 4 = 3 := by decide

theorem divisors_five : divisors 5 = 2 := by decide

theorem divisors_six : divisors 6 = 4 := by decide

theorem divisors_seven : divisors 7 = 2 := by decide

theorem divisors_eight : divisors 8 = 4 := by decide

theorem divisors_nine : divisors 9 = 3 := by decide

theorem divisors_ten : divisors 10 = 4 := by decide
