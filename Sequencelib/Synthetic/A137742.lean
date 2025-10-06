/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137742 sequence
-/

namespace Sequence

@[OEIS := A137742, offset := 1, maxIndex := 100, derive := true]
def A137742 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (2 + y) x) x 1 - x) + 1) + loop (λ (x y) ↦ x + y) x 1) -
        if x ≤ 0 then 1 else 2) -
      2) +
    1) +
  (x + x)

end Sequence