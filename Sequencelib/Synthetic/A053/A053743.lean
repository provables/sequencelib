/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053743 sequence
-/

namespace Sequence

@[OEIS := A053743, offset := 0, maxIndex := 100, derive := true]
def A053743 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ 2 * (2 + ((2 * (x + x)) + x))) 2 x

end Sequence