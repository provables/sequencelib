/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037616 sequence
-/

namespace Sequence

@[OEIS := A037616, offset := 1, maxIndex := 21, derive := true]
def A037616 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((((if 2 ≤ 0 then 2 * (x + x) else x - 2) % 3) + 1) + ((x + x) * 2) * 2) + x) x 1

end Sequence