/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026492 sequence
-/

namespace Sequence

@[OEIS := A026492, offset := 0, maxIndex := 50, derive := true]
def A026492 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x _y) ↦ ((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 x) - x) - x) 2 x / 2) 1
      ((x + x) + x) %
    2) +
  1

end Sequence