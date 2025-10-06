/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309088 sequence
-/

namespace Sequence

@[OEIS := A309088, offset := 1, maxIndex := 7, derive := true]
def A309088 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop2 (λ (x y) ↦ ((y * y) + x) + y) (λ (x _y) ↦ x) x 0 1 / 3) + 1) / 2) / 2) + 1

end Sequence