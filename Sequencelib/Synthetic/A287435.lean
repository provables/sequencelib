/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A287435 sequence
-/

namespace Sequence

@[OEIS := A287435, offset := 1, maxIndex := 100, derive := true]
def A287435 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x _y) ↦ loop (λ (x _y) ↦ ((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 3) x 0 x - 1) - x) - x) 2 x / 2) 1 x +
            x) %
          3) -
        1) +
      1) +
    ((x + x) + x)) +
  1

end Sequence