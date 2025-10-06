/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196592 sequence
-/

namespace Sequence

@[OEIS := A196592, offset := 1, maxIndex := 16, derive := true]
def A196592 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop
          (λ (x _y) ↦
            ((((loop
                        (λ (x _y) ↦
                          ((((((((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 1 1 % 3) + 1) + x) + 1) / 2) + x) + x) / 2) -
                            x)
                        2 x +
                      2) +
                    x) %
                  2) +
                1) +
              x)
          x 1 -
        1) %
      (1 + x)) +
    1) +
  2

end Sequence