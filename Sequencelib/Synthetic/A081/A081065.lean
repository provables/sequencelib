/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081065 sequence
-/

namespace Sequence

@[OEIS := A081065, offset := 1, maxIndex := 19, derive := true]
def A081065 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 - ((2 * (x + x)) + y)) (λ (x _y) ↦ x) (x + x) 1 0 * 2

end Sequence