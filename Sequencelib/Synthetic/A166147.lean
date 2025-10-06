/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166147 sequence
-/

namespace Sequence

@[OEIS := A166147, offset := 1, maxIndex := 100, derive := true]
def A166147 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x _y) ↦ 2 * (2 + x)) 2 x * x)

end Sequence