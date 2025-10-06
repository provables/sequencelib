/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152577 sequence
-/

namespace Sequence

@[OEIS := A152577, offset := 1, maxIndex := 12, derive := true]
def A152577 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) (1 + (x + x)) 1

end Sequence