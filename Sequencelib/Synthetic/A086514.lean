/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086514 sequence
-/

namespace Sequence

@[OEIS := A086514, offset := 1, maxIndex := 44, derive := true]
def A086514 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ ((y * y) + x) - y) (x - 1) x

end Sequence