/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156085 sequence
-/

namespace Sequence

@[OEIS := A156085, offset := 0, maxIndex := 25, derive := true]
def A156085 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x _y) ↦ x) (y + y) 0 1 - x) x 0 / 2) / 2

end Sequence