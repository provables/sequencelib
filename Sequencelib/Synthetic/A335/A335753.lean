/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335753 sequence
-/

namespace Sequence

@[OEIS := A335753, offset := 2, maxIndex := 9, derive := true]
def A335753 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((((((((((((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 1 else y) x x + x) + x) % (1 + x)) * (x + 1)) + 1) / 2) + 2) +
                x) /
              2) -
            x) %
          2) +
        loop (λ (x y) ↦ x + y) x x) *
      2) +
    1) +
  x

end Sequence