/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228157 sequence
-/

namespace Sequence

@[OEIS := A228157, offset := 1, maxIndex := 100, derive := true]
def A228157 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ 1 + ((2 + x) * x)) 2 2 * (1 + x)) / ((4 * 2) + 1)) + 1

end Sequence