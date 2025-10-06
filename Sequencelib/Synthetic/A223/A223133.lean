/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A223133 sequence
-/

namespace Sequence

@[OEIS := A223133, offset := 0, maxIndex := 99, derive := true]
def A223133 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((((((((((((loop (λ (x y) ↦ 2 - (x * y)) x 0 / 2) / 2) + 1) * x) / 2) + 1) / 2) + 1) + 1) / 2) / 2) + 1) + x) /
                  2) +
                1) +
              x) +
            1) /
          loop (λ (x y) ↦ x * y) x 1) +
        x) +
      x) /
    2) +
  x

end Sequence