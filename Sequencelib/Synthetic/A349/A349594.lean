/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A349594 sequence
-/

namespace Sequence

@[OEIS := A349594, offset := 1, maxIndex := 24, derive := true]
def A349594 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) (x + x) 2 1 * loop (λ (x _y) ↦ 2 * x) x 1) / 2

end Sequence