/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176415 sequence
-/

namespace Sequence

@[OEIS := A176415, offset := 0, maxIndex := 100, derive := true]
def A176415 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 + loop (λ (x _y) ↦ 2 - x) x 4)

end Sequence