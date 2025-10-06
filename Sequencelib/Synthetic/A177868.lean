/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177868 sequence
-/

namespace Sequence

@[OEIS := A177868, offset := 1, maxIndex := 11, derive := true]
def A177868 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((1 + loop (λ (x _y) ↦ x + x) x 1) % ((if x ≤ 0 then 1 else 2 + x) + x)) - 1) + 1) - (x * x) / 2) + x) / 3) +
        1) +
      x) +
    1) /
  2

end Sequence