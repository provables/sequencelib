/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073551 sequence
-/

namespace Sequence

@[OEIS := A073551, offset := 1, maxIndex := 23, derive := true]
def A073551 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x) * 2) y 0) x 1 * 2

end Sequence