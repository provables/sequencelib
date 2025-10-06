/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120139 sequence
-/

namespace Sequence

@[OEIS := A120139, offset := 1, maxIndex := 100, derive := true]
def A120139 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((loop (λ (x _y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) 2 2 + ((x / 2) + x)) x 1 + 2) + 2) + 2) + 2) + 2) + 2) + 2) +
          2) +
        2) +
      2) +
    2) /
  2

end Sequence