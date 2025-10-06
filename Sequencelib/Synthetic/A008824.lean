/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008824 sequence
-/

namespace Sequence

@[OEIS := A008824, offset := 0, maxIndex := 100, derive := true]
def A008824 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ (x + x) / (1 + (2 + 4))) 1 y * 2) + x) + 1) x 1

end Sequence