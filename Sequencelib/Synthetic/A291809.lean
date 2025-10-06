/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A291809 sequence
-/

namespace Sequence

@[OEIS := A291809, offset := 1, maxIndex := 4, derive := true]
def A291809 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((loop2 (λ (x y) ↦ (x * y) * y) (λ (_x y) ↦ y) x 1 x * loop (λ (x y) ↦ x * y) x 1) - 1) + 1) - x % 2) * 2) +
            1) /
          2) *
        x) +
      2) /
    2) +
  x

end Sequence