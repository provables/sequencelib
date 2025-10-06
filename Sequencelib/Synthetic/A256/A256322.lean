/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256322 sequence
-/

namespace Sequence

@[OEIS := A256322, offset := 0, maxIndex := 100, derive := true]
def A256322 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((loop (λ (x _y) ↦ (loop (λ (x y) ↦ (x * x) + y) 2 2 * x) + x) 2 (2 * (x * x)) / 2) / 2) / 2) / 2) + 2) / 2) /
            2) +
          1) /
        2) *
      2) /
    3) /
  2

end Sequence