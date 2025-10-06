/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005860 sequence
-/

namespace Sequence

@[OEIS := A005860, offset := 10, maxIndex := 24, derive := true]
def A005860 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| (((((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1 / (2 + x)) * 3) / 2) + 2) / 2) / 2) + 2) - 1

end Sequence