/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A306785 sequence
-/

namespace Sequence

@[OEIS := A306785, offset := 1, maxIndex := 3, derive := true]
def A306785 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x / 3) + x) + x) x 2

end Sequence