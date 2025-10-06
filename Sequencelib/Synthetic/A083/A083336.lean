/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083336 sequence
-/

namespace Sequence

@[OEIS := A083336, offset := 0, maxIndex := 34, derive := true]
def A083336 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ x) x 3 0 / loop2 (λ (_x y) ↦ 2 * y) (λ (x _y) ↦ x) x 1 1

end Sequence