/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140261 sequence
-/

namespace Sequence

@[OEIS := A140261, offset := 0, maxIndex := 37, derive := true]
def A140261 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop (λ (x _y) ↦ 2 + ((x / 2) + x)) x 2) / 2) + 2

end Sequence