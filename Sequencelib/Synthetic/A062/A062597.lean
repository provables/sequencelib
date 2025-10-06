/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062597 sequence
-/

namespace Sequence

@[OEIS := A062597, offset := 1, maxIndex := 4, derive := true]
def A062597 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x + y) (λ (x _y) ↦ x) x 1 2 / 2) / 2) + 2

end Sequence