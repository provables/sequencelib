/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011455 sequence
-/

namespace Sequence

@[OEIS := A011455, offset := 2, maxIndex := 17, derive := true]
def A011455 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ x + loop2 (λ (x y) ↦ 2 * (x * y)) (λ (x _y) ↦ x) y 1 1) x 1 * 2

end Sequence