/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085070 sequence
-/

namespace Sequence

@[OEIS := A085070, offset := 1, maxIndex := 4, derive := true]
def A085070 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (x - 1) + loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 2) x 2 x

end Sequence