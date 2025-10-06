/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093344 sequence
-/

namespace Sequence

@[OEIS := A093344, offset := 0, maxIndex := 100, derive := true]
def A093344 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 1 + (x * (y - 1))) y 1 + x * y) x 0

end Sequence