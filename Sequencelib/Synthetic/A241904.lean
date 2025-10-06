/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A241904 sequence
-/

namespace Sequence

@[OEIS := A241904, offset := 1, maxIndex := 6, derive := true]
def A241904 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 + x) (λ (_x _y) ↦ 0) x 1 2 + 1) / 2) + 1) + x) + 1) / 2) +
                  2) *
                loop (λ (x y) ↦ x * y) x 1) +
              1) /
            2) /
          2) +
        1) +
      x) +
    x) /
  2

end Sequence