/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112702 sequence
-/

namespace Sequence

@[OEIS := A112702, offset := 0, maxIndex := 16, derive := true]
def A112702 (x : ℕ) : ℕ :=
  Int.toNat <| loop
  (λ (x y) ↦
    loop
        (λ (x _y) ↦
          (loop (λ (x y) ↦ (((2 * ((2 * (x * y)) - x)) * 2) * 2) * 2) x 1 / loop (λ (x y) ↦ x * y) x 1) / (1 + x))
        1 y +
      x)
  x 1

end Sequence