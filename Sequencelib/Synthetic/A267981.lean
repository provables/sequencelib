/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267981 sequence
-/

namespace Sequence

@[OEIS := A267981, offset := 0, maxIndex := 19, derive := true]
def A267981 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (1 + y) * (x * y)) (x + x) 1 / loop (λ (x y) ↦ ((y * y) * y) * x) x 1) /
        loop (λ (x y) ↦ x * y) x 1) /
      (1 + x)) /
    (1 + x)) *
  2

end Sequence