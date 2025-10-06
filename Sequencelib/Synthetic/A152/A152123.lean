/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152123 sequence
-/

namespace Sequence

@[OEIS := A152123, offset := 3, maxIndex := 7, derive := true]
def A152123 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop
    (λ (x _y) ↦
      ((loop
              (λ (x _y) ↦
                ((((((((if (((((((loop (λ (x _y) ↦ x * x) 2 2 - 2) + x) * x) / 2) + 2) / 2) % 2) ≤ 0 then x
                                else 0 / 2) +
                                1) -
                              x) /
                            2) +
                          x) /
                        2) +
                      x) /
                    2) +
                  x)
              2 x +
            1) +
          x) +
        x)
    x 2 +
  2

end Sequence