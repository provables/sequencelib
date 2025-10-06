/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102439 sequence
-/

namespace Sequence

@[OEIS := A102439, offset := 0, maxIndex := 45, derive := true]
def A102439 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (2 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) 2 x)

end Sequence