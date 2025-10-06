/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096407 sequence
-/

namespace Sequence

@[OEIS := A096407, offset := 2, maxIndex := 8, derive := true]
def A096407 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ (2 + x) * x) 1 (loop (λ (x _y) ↦ ((x * x) + x) + 1) x 1) + 2

end Sequence