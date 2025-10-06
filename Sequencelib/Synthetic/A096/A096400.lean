/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096400 sequence
-/

namespace Sequence

@[OEIS := A096400, offset := 1, maxIndex := 60, derive := true]
def A096400 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ 1 + (x * y)) 4 2 - x) - x / 2

end Sequence