/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271713 sequence
-/

namespace Sequence

@[OEIS := A271713, offset := 1, maxIndex := 56, derive := true]
def A271713 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((2 - (y % 2)) * y) + x) x 2

end Sequence