/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058642 sequence
-/

namespace Sequence

@[OEIS := A058642, offset := 1, maxIndex := 11, derive := true]
def A058642 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((x / 2) / 2) / 2) + x) % (2 * 4)) - 2 * 3) % loop (λ (x _y) ↦ 2 * x) x 1) + 2) / 2) / 2) + x) / 2) / 2) +
        x) /
      2) /
    2) /
  2

end Sequence