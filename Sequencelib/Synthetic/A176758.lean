/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176758 sequence
-/

namespace Sequence

@[OEIS := A176758, offset := 3, maxIndex := 51, derive := true]
def A176758 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ x) y 2 0 + x) + x) x 2

end Sequence