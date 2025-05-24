/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The period 2 sequence; i.e., the sequence corresponding to the parity of `n`.
-/
@[OEIS := A000035, offset := 0]
def parity (n : ℕ) := Nat.mod n 2

#eval Nat.mod 0 2

theorem parity_zero : parity 0 = 0 := by decide

theorem parity_one : parity 1 = 1 := by decide

theorem parity_two : parity 2 = 0 := by decide

theorem parity_three : parity 3 = 1 := by decide

theorem parity_four : parity 4 = 0 := by decide

theorem parity_five : parity 5 = 1 := by decide

theorem parity_six : parity 6 = 0 := by decide

theorem parity_seven : parity 7 = 1 := by decide

theorem parity_eight : parity 8 = 0 := by decide

theorem parity_nine : parity 9 = 1 := by decide

theorem parity_ten : parity 10 = 0 := by decide
