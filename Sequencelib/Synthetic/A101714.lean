/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101714 sequence
-/

namespace Sequence

@[OEIS := A101714, offset := 1, maxIndex := 5, derive := true]
def A101714 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((loop (λ (x _y) ↦ x * x) 1 (loop (λ (x y) ↦ x * y) x 1) * loop (λ (x _y) ↦ 2 * x) x 1) / 2) / 2) + 1) /
                      2) /
                    2) *
                  x) +
                x) /
              2) +
            1) *
          (x / 2)) +
        x) /
      2) +
    x) *
  2

end Sequence