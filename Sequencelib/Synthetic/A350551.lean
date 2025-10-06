/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350551 sequence
-/

namespace Sequence

@[OEIS := A350551, offset := 0, maxIndex := 30, derive := true]
def A350551 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) x 1 1 - loop2 (λ (x y) ↦ x + (y + y)) (λ (x _y) ↦ x) x 1 1) / 2

end Sequence