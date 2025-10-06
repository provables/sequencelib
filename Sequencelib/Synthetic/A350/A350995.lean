/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350995 sequence
-/

namespace Sequence

@[OEIS := A350995, offset := 0, maxIndex := 21, derive := true]
def A350995 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x)) x 2)

end Sequence