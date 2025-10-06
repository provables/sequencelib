/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033943 sequence
-/

namespace Sequence

@[OEIS := A033943, offset := 0, maxIndex := 6, derive := true]
def A033943 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((loop2 (λ (x y) ↦ (x + x) + y) (λ (_x _y) ↦ 1) x 1 x - x) - x) * 2) - 1) + 1) +
            loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1) /
          3) +
        1) /
      2) *
    2) -
  1

end Sequence