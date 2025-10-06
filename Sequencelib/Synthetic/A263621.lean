/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263621 sequence
-/

namespace Sequence

@[OEIS := A263621, offset := 1, maxIndex := 6, derive := true]
def A263621 (n : ℕ) : ℤ :=
  let x := n - 1
  (((((((((((((((loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 1 / loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) x 1) *
                              (loop (λ (x _y) ↦ (x - x) - x) x 1 / 2)) /
                            2) /
                          2) +
                        1) +
                      x) *
                    2) +
                  1) +
                x) +
              x) *
            (1 + x)) /
          2) +
        2) /
      2) +
    2) +
  x

end Sequence