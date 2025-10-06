/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078113 sequence
-/

namespace Sequence

@[OEIS := A078113, offset := 1, maxIndex := 41, derive := true]
def A078113 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ 2 + (2 + y)) (λ (x _y) ↦ x + x) x 1 1

end Sequence