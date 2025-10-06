/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119702 sequence
-/

namespace Sequence

@[OEIS := A119702, offset := 0, maxIndex := 21, derive := true]
def A119702 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((2 * (x * y)) - x) * 2) x 1 / loop (λ (x y) ↦ x * y) x 1) *
    loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 x) *
  x

end Sequence