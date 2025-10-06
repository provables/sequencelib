/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129362 sequence
-/

namespace Sequence

@[OEIS := A129362, offset := 0, maxIndex := 50, derive := true]
def A129362 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y 1 0 + x) + x) x 1 - 1) + 2) * 2) - 1) / 3

end Sequence