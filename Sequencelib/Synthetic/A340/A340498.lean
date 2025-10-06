/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340498 sequence
-/

namespace Sequence

@[OEIS := A340498, offset := 0, maxIndex := 20, derive := true]
def A340498 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop (λ (x _y) ↦ 2 * ((x - (1 % x)) + x)) x 1

end Sequence