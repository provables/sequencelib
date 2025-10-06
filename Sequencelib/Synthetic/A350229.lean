/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350229 sequence
-/

namespace Sequence

@[OEIS := A350229, offset := 0, maxIndex := 66, derive := true]
def A350229 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ (1 + y) / 3) x 1 x - 1) - x) - x) 2 x

end Sequence