/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A258588 sequence
-/

namespace Sequence

@[OEIS := A258588, offset := 1, maxIndex := 50, derive := true]
def A258588 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (if x ≤ 0 then 2 else loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * (1 + x)) / 2

end Sequence