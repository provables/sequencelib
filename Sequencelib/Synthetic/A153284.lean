/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153284 sequence
-/

namespace Sequence

@[OEIS := A153284, offset := 1, maxIndex := 70, derive := true]
def A153284 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ if x ≤ 0 then 2 else 0) x x

end Sequence