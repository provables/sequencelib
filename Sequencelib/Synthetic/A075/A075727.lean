/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A075727 sequence
-/

namespace Sequence

@[OEIS := A075727, offset := 1, maxIndex := 41, derive := true]
def A075727 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((loop (λ (x _y) ↦ (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 2 / loop (λ (x _y) ↦ x + x) x 1) - x) x 1 /
                          2) +
                        1) -
                      x) /
                    2) +
                  x) /
                2) +
              x) +
            x) /
          2) /
        2) +
      1) /
    2) +
  ((x + x) + x) * 2

end Sequence