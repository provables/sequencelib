/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071713 sequence
-/

namespace Sequence

@[OEIS := A071713, offset := 1, maxIndex := 4, derive := true]
def A071713 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((((((loop (λ (x _y) ↦ x + x) x 3 / 2) * (x + 1)) * 2) + 2) * 2) - 1) + 1) (x % 2) x / 2

end Sequence