/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255435 sequence
-/

namespace Sequence

@[OEIS := A255435, offset := 0, maxIndex := 12, derive := true]
def A255435 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ x * x) 2 y * x) * y) + x) x 1

end Sequence