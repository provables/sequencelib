/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211385 sequence
-/

namespace Sequence

@[OEIS := A211385, offset := 1, maxIndex := 10, derive := true]
def A211385 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((loop (λ (x _y) ↦ x * x) 1 (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1) / 2) / 2) / 2) + x) / 2) + 1) / 2) /
      2) +
    2) +
  x

end Sequence