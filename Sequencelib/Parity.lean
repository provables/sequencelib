/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Parity Sequence

This file introduces the parity sequence. It is a core sequence on the OEIS.

## Implementation notes

We implement the sequence definition using `Nat.mod` from Mathlib.

## Main results

- The basic definition and the first values of the sequence, up to `n=10` are given.

-/

namespace Sequence

/--
The period 2 sequence; i.e., the sequence corresponding to the parity of `n`.
-/
@[OEIS := A000035, offset := 0]
def Parity (n : ℕ) := Nat.mod n 2

theorem Parity_zero : Parity 0 = 0 := by decide

theorem Parity_one : Parity 1 = 1 := by decide

theorem Parity_two : Parity 2 = 0 := by decide

theorem Parity_three : Parity 3 = 1 := by decide

theorem Parity_four : Parity 4 = 0 := by decide

theorem Parity_five : Parity 5 = 1 := by decide

theorem Parity_six : Parity 6 = 0 := by decide

theorem Parity_seven : Parity 7 = 1 := by decide

theorem Parity_eight : Parity 8 = 0 := by decide

theorem Parity_nine : Parity 9 = 1 := by decide

theorem Parity_ten : Parity 10 = 0 := by decide
