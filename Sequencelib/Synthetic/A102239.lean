/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102239 sequence
-/

namespace Sequence

@[OEIS := A102239, offset := 0, maxIndex := 21, derive := true]
def A102239 (x : ℕ) : ℕ :=
  Int.toNat <| (x % 2) + loop (λ (x _y) ↦ 1 + ((2 * (x + x)) + x)) x 1

end Sequence