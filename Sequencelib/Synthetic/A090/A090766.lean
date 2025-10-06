/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090766 sequence
-/

namespace Sequence

@[OEIS := A090766, offset := 0, maxIndex := 7, derive := true]
def A090766 (x : ℕ) : ℤ :=
  loop
    (λ (x y) ↦
      loop
          (λ (x y) ↦
            (((loop (λ (x y) ↦ (x * y) * y) (x + x) 1 / loop (λ (x y) ↦ ((y * y) * y) * x) x 1) /
                  loop (λ (x y) ↦ x * y) x 1) /
                (1 + x)) /
              (1 + y))
          1 y *
        x)
    x 1 *
  (1 + x)

end Sequence