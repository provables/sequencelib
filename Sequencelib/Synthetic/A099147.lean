/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099147 sequence
-/

namespace Sequence

@[OEIS := A099147, offset := 1, maxIndex := 8, derive := true]
def A099147 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else loop (λ (x _y) ↦ (2 * (x * x)) - x) x 2

end Sequence