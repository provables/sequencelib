/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091401 sequence
-/

namespace Sequence

@[OEIS := A091401, offset := 1, maxIndex := 15, derive := true]
def A091401 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 0 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) / 2) / 2) /
                  2) +
                1) -
              x) /
            2) /
          2) +
        1) /
      2) +
    1) +
  x

end Sequence