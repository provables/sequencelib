/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173766 sequence
-/

namespace Sequence

@[OEIS := A173766, offset := 1, maxIndex := 18, derive := true]
def A173766 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 2 * (1 + x)) 2 x + x)) x 2) + 4

end Sequence