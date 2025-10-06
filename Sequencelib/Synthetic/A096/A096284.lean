/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096284 sequence
-/

namespace Sequence

@[OEIS := A096284, offset := 3, maxIndex := 93, derive := true]
def A096284 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| if loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 1 ≤ 0 then 1 else 2

end Sequence