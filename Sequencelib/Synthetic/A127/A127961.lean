/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127961 sequence
-/

namespace Sequence

@[OEIS := A127961, offset := 0, maxIndex := 14, derive := true]
def A127961 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ (2 + (2 * 4)) * (1 - x)) 2 x + 1) x 1

end Sequence