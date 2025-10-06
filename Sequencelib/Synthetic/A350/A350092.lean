/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350092 sequence
-/

namespace Sequence

@[OEIS := A350092, offset := 0, maxIndex := 32, derive := true]
def A350092 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y % 2) + (x + x) * 2) + y) (λ (x _y) ↦ x) x 1 0 / loop (λ (x _y) ↦ x + x) x 1

end Sequence