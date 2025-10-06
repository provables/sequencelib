/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A206543 sequence
-/

namespace Sequence

@[OEIS := A206543, offset := 1, maxIndex := 61, derive := true]
def A206543 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (loop (λ (x y) ↦ (((y * y) + x) / (1 + x)) + y) (1 + x) 0 - 1) - y) (λ (x _y) ↦ x) x 1 1 * 2) - 1

end Sequence