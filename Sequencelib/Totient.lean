/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!

# Totient sequence

The sequence corresponding to the Euler totient function, `phi(n)`; This function counts the
number of numbers less than `n` and coprime with `n`; i.e., 1, 1, 2, 2, 4, 2, 6, ...

## Implementation notes

The sequence is defined using the `Nat.totient` function from Mathlib.

## Main results

- The basic definition and the first values of the sequence are given, up to `n=10`.

-/

namespace Sequence

/--
The Totient sequence
-/
@[OEIS := A000010, offset := 1]
noncomputable def Totient (n : ℕ) := Nat.totient n

theorem Totient_one : Totient 1 = 1 := by decide

theorem Totient_two : Totient 2 = 1 := by decide

theorem Totient_three : Totient 3 = 2 := by decide

theorem Totient_four : Totient 4 = 2 := by decide

theorem Totient_five : Totient 5 = 4 := by decide

theorem Totient_six : Totient 6 = 2 := by decide

theorem Totient_seven : Totient 7 = 6 := by decide

theorem Totient_eight : Totient 8 = 4 := by decide

theorem Totient_nine : Totient 9 = 6 := by decide

theorem Totient_ten : Totient 10 = 4 := by decide
