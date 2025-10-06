/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179907 sequence
-/

namespace Sequence

@[OEIS := A179907, offset := 1, maxIndex := 10, derive := true]
def A179907 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y + x) + y) (λ (x y) ↦ x + y) (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) 1 0

end Sequence