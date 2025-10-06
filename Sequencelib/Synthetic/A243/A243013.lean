/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A243013 sequence
-/

namespace Sequence

@[OEIS := A243013, offset := 1, maxIndex := 7, derive := true]
def A243013 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1 * loop (λ (x _y) ↦ x + x) x 1) / 2) + 1) / 2) / 2) + 1) +
                    x) -
                  1) +
                1) *
              if x ≤ 0 then 1 else 2 + x) /
            2) +
          1) /
        2) /
      2) +
    2) /
  2

end Sequence