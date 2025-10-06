/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071279 sequence
-/

namespace Sequence

@[OEIS := A071279, offset := 3, maxIndex := 91, derive := true]
def A071279 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 + (2 + loop (λ (x _y) ↦ x + x) (2 - x) 2)

end Sequence