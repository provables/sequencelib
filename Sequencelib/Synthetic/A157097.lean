/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157097 sequence
-/

namespace Sequence

@[OEIS := A157097, offset := 0, maxIndex := 100, derive := true]
def A157097 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ ((loop (λ (x y) ↦ x * y) 4 x - x) - x) - y) (λ (x _y) ↦ x) x 1 1 * 3) + 2

end Sequence