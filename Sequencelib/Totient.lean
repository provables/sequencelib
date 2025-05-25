/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The sequence corresponding to the Euler totient function, `phi(n)`; This function counts the
number of numbers less than `n` and coprime with `n`; i.e., 1, 1, 2, 2, 4, 2, 6, ...
-/
@[OEIS := A000010, offset := 1]
noncomputable def totient (n : ℕ) := Nat.totient n

theorem totient_one : totient 1 = 1 := by decide

theorem totient_two : totient 2 = 1 := by decide

theorem totient_three : totient 3 = 2 := by decide

theorem totient_four : totient 4 = 2 := by decide

theorem totient_five : totient 5 = 4 := by decide

theorem totient_six : totient 6 = 2 := by decide

theorem totient_seven : totient 7 = 6 := by decide

theorem totient_eight : totient 8 = 4 := by decide

theorem totient_nine : totient 9 = 6 := by decide

theorem totient_ten : totient 10 = 4 := by decide
