/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099177 sequence
-/

namespace Sequence

@[OEIS := A099177, offset := 0, maxIndex := 27, derive := true]
def A099177 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ x) x 1 0 - loop2 (λ (_x y) ↦ 2 * y) (λ (x _y) ↦ x) x 1 0) / 2

end Sequence