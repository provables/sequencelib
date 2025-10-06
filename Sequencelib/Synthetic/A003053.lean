/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003053 sequence
-/

namespace Sequence

@[OEIS := A003053, offset := 1, maxIndex := 40, derive := true]
def A003053 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((y % 2) + loop (λ (x _y) ↦ 1 + (x + x)) (y - 1) 1) * x) x 1

end Sequence