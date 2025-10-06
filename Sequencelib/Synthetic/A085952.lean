/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085952 sequence
-/

namespace Sequence

@[OEIS := A085952, offset := 0, maxIndex := 100, derive := true]
def A085952 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop2 (λ (x _y) ↦ (loop (λ (x y) ↦ (2 + y) * x) 2 x - x) - x) (λ (_x _y) ↦ 0) x 1 x / 2) * 3) + 1) * 2) - 2) *
    3) +
  1

end Sequence