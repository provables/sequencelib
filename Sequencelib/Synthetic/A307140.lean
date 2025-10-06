/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A307140 sequence
-/

namespace Sequence

@[OEIS := A307140, offset := 5, maxIndex := 10, derive := true]
def A307140 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| ((((((((((((((((loop (λ (x y) ↦ 1 + ((x * y) + x)) x 1 - x) / 2) + 2) * 2) - x) / 2) / 2) + 1) / 2) + x) * x) + 1) /
          2) +
        2) +
      x) /
    2) +
  x

end Sequence