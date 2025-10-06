/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137466 sequence
-/

namespace Sequence

@[OEIS := A137466, offset := 0, maxIndex := 99, derive := true]
def A137466 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ 2 + (2 * ((2 * (x + x)) + x))) 2 x - 1) x 1

end Sequence