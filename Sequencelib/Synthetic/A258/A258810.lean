/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258810 sequence
-/

namespace Sequence

@[OEIS := A258810, offset := 1, maxIndex := 23, derive := true]
def A258810 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 2 (1 + x) - 1

end Sequence