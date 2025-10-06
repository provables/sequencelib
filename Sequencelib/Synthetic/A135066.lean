/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135066 sequence
-/

namespace Sequence

@[OEIS := A135066, offset := 1, maxIndex := 4, derive := true]
def A135066 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (1 + (2 * 4)) + x * y) (λ (x _y) ↦ x) x 1 1 / 2) + 2

end Sequence