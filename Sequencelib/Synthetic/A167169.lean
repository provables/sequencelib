/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167169 sequence
-/

namespace Sequence

@[OEIS := A167169, offset := 0, maxIndex := 4, derive := true]
def A167169 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((((((((((loop (λ (x y) ↦ (x * y) * y) x (loop (λ (x _y) ↦ 1 + (x + x)) x 1) / 2) + 1) / 2) / 2) + 1) / 2) +
                          1) /
                        2) +
                      x) *
                    x) +
                  1) +
                x) /
              2) +
            x) +
          x) *
        2) +
      2) /
    2) -
  x

end Sequence