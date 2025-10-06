/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071579 sequence
-/

namespace Sequence

@[OEIS := A071579, offset := 0, maxIndex := 9, derive := true]
def A071579 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (2 * (y + y)) - x) (loop (λ (x _y) ↦ x + x) x 1) 0 1

end Sequence