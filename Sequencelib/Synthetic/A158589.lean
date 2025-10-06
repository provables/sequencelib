/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158589 sequence
-/

namespace Sequence

@[OEIS := A158589, offset := 1, maxIndex := 100, derive := true]
def A158589 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y) ↦ x * x) 1 (loop (λ (x _y) ↦ (x + x) + x) 2 (1 + x)) - 2) - 2) * 4) - 2

end Sequence