/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007516 sequence
-/

namespace Sequence

@[OEIS := A007516, offset := 0, maxIndex := 4, derive := true]
def A007516 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ x + x) (x - 1) 2) x 0 + 1

end Sequence