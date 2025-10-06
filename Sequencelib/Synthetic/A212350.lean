/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212350 sequence
-/

namespace Sequence

@[OEIS := A212350, offset := 1, maxIndex := 33, derive := true]
def A212350 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 + if ((x / 2) / 2) ≤ 0 then 2 else 0) + loop (λ (x _y) ↦ x + x) x 1) - 1) * 2

end Sequence