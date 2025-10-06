/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215658 sequence
-/

namespace Sequence

@[OEIS := A215658, offset := 1, maxIndex := 5, derive := true]
def A215658 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + loop (λ (x y) ↦ (2 + (x * y)) / 2) x x

end Sequence