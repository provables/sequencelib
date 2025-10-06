/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058932 sequence
-/

namespace Sequence

@[OEIS := A058932, offset := 1, maxIndex := 12, derive := true]
def A058932 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop (λ (x _y) ↦ x + x) x 1 / (1 + x)) + 1) - x) / 2) + 2) / 2) / 2

end Sequence