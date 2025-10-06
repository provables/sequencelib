/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165150 sequence
-/

namespace Sequence

@[OEIS := A165150, offset := 0, maxIndex := 20, derive := true]
def A165150 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((2 * (x + x)) + x)) + y) (λ (_x y) ↦ ((y + y) + y) * 2) x 1 2

end Sequence