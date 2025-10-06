/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343586 sequence
-/

namespace Sequence

@[OEIS := A343586, offset := 1, maxIndex := 14, derive := true]
def A343586 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) (1 + (x + x)) 1 +
      loop (λ (x _y) ↦ (loop (λ (x _y) ↦ (1 + x) + x) 2 x + x) * 2) x 1) *
    3) +
  2

end Sequence