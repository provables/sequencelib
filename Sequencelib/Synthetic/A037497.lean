/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037497 sequence
-/

namespace Sequence

@[OEIS := A037497, offset := 1, maxIndex := 100, derive := true]
def A037497 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ 2 * (x + x)) y 2 + x) / 2) x 1

end Sequence