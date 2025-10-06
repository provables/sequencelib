/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165623 sequence
-/

namespace Sequence

@[OEIS := A165623, offset := 1, maxIndex := 9, derive := true]
def A165623 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x / 2) / 2) x (loop (λ (x _y) ↦ x * x) x 2)

end Sequence