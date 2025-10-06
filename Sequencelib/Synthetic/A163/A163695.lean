/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163695 sequence
-/

namespace Sequence

@[OEIS := A163695, offset := 1, maxIndex := 99, derive := true]
def A163695 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ (2 + (x % 2)) + y) (λ (x y) ↦ x + y) x 1 0 - 1) + 1) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1

end Sequence