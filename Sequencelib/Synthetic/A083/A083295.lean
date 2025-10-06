/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083295 sequence
-/

namespace Sequence

@[OEIS := A083295, offset := 0, maxIndex := 100, derive := true]
def A083295 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) x (loop (λ (x _y) ↦ ((1 - x) * 2) * 2) x 1)

end Sequence