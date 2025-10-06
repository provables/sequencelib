/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261722 sequence
-/

namespace Sequence

@[OEIS := A261722, offset := 1, maxIndex := 4, derive := true]
def A261722 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x y) ↦ x + y) x x 2

end Sequence