/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003253 sequence
-/

namespace Sequence

@[OEIS := A003253, offset := 1, maxIndex := 66, derive := true]
def A003253 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((((loop (λ (x y) ↦ (y / (1 + 4)) + x) x 0 * 2) / 2) + 2) / 2) / 2) + 1) / 2) + 1) / 2) / 2) + 1) / 2) +
            1) /
          2) +
        2) +
      x) /
    2) +
  x

end Sequence