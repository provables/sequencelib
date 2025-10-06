/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A320945 sequence
-/

namespace Sequence

@[OEIS := A320945, offset := 2, maxIndex := 6, derive := true]
def A320945 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ ((x + y) + y) + y) x 1 2 / 2) * loop (λ (x y) ↦ x * y) x 1) + 1) / 2) / 2) +
      1) /
    2) +
  1

end Sequence