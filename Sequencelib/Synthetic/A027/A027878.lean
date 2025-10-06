/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027878 sequence
-/

namespace Sequence

@[OEIS := A027878, offset := 0, maxIndex := 49, derive := true]
def A027878 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) y x - x) x 1

end Sequence