/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086858 sequence
-/

namespace Sequence

@[OEIS := A086858, offset := 1, maxIndex := 100, derive := true]
def A086858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x - 1) / (comprN (λ (x : ℤ) ↦ x) 0 + 2)) 2 x / 2) + y) x 1 + x) + x) / (x + 1)

end Sequence