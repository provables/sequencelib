/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179041 sequence
-/

namespace Sequence

@[OEIS := A179041, offset := 0, maxIndex := 35, derive := true]
def A179041 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 2 2 - 2) - 2) * 2) / 3) + 1) / 2) * 2) - 1) + 2) - x / 2) + 2) /
      2) +
    x) /
  2

end Sequence