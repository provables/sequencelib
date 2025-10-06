/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098463 sequence
-/

namespace Sequence

@[OEIS := A098463, offset := 1, maxIndex := 5, derive := true]
def A098463 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (((loop (λ (x y) ↦ (loop (λ (x y) ↦ x + y) x x * y) - x) x 1 / 2) + 1) / 2) + y) x 0 / 2) + 2) + x

end Sequence