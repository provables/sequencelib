/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A227361 sequence
-/

namespace Sequence

@[OEIS := A227361, offset := 0, maxIndex := 100, derive := true]
def A227361 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 0 x - 1) - x) - x) 2 x / 2) *
    loop (λ (x _y) ↦ (-x)) x 1) +
  x

end Sequence