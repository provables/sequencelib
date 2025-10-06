/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A291775 sequence
-/

namespace Sequence

@[OEIS := A291775, offset := 1, maxIndex := 4, derive := true]
def A291775 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + loop (λ (x _y) ↦ x + x) ((x + x) + x) (if x ≤ 0 then 1 else 2)

end Sequence