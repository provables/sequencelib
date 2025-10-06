/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185294 sequence
-/

namespace Sequence

@[OEIS := A185294, offset := 0, maxIndex := 20, derive := true]
def A185294 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ (((((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1 / 2) + 1) / 2) + 2) + x) / 2) - x) + y)
        (λ (x _y) ↦ x) x 1 0 /
      2) /
    2) /
  2

end Sequence