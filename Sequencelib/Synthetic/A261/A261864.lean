/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261864 sequence
-/

namespace Sequence

@[OEIS := A261864, offset := 0, maxIndex := 5, derive := true]
def A261864 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ x * y) (λ (x _y) ↦ x) x (loop (λ (_x _y) ↦ 1) x x) 2 - x % 2) * 2

end Sequence