/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063165 sequence
-/

namespace Sequence

@[OEIS := A063165, offset := 1, maxIndex := 50, derive := true]
def A063165 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((((loop (λ (x y) ↦ 2 * (y - ((x / 2) / 2))) x 1 + x % 2) + x) + x) + x) + x) + x) + x) + x) + 2) + x) +
                  x) +
                x) +
              2) +
            x) +
          x) +
        x) +
      2) +
    x) +
  x

end Sequence