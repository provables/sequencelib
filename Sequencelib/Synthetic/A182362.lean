/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182362 sequence
-/

namespace Sequence

@[OEIS := A182362, offset := 0, maxIndex := 55, derive := true]
def A182362 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x _y) ↦ (1 + loop (λ (x _y) ↦ x / 3) 2 x) + x) x 0 + 1) + 2) + 2) + 2) + 2

end Sequence