/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165718 sequence
-/

namespace Sequence

@[OEIS := A165718, offset := 1, maxIndex := 100, derive := true]
def A165718 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ ((2 - (y % 2)) * (y + 1)) + x) x 1 + 1) + x) / 2) + x) + 2

end Sequence