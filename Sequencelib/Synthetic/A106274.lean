/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106274 sequence
-/

namespace Sequence

@[OEIS := A106274, offset := 1, maxIndex := 5, derive := true]
def A106274 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop2 (λ (x y) ↦ 2 + (x * y)) (λ (x _y) ↦ x) x 1 2) / 2) * 2

end Sequence