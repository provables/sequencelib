/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060202 sequence
-/

namespace Sequence

@[OEIS := A060202, offset := 0, maxIndex := 15, derive := true]
def A060202 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 2) y 1 x / 2) + x) x 2 * 2

end Sequence