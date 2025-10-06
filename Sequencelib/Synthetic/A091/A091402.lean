/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091402 sequence
-/

namespace Sequence

@[OEIS := A091402, offset := 1, maxIndex := 14, derive := true]
def A091402 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop
          (λ (x _y) ↦
            (((((((((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 2 2 - 1) / (x + 1)) + x) + 1) / 2) + 2) + x) / 2) + x) +
                  x) /
                2) -
              x)
          2 x /
        2) +
      2) /
    2) +
  x

end Sequence