/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135098 sequence
-/

namespace Sequence

@[OEIS := A135098, offset := 0, maxIndex := 50, derive := true]
def A135098 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y 1 0 + x) + x) x 2 / 2

end Sequence