/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140441 sequence
-/

namespace Sequence

@[OEIS := A140441, offset := 0, maxIndex := 5, derive := true]
def A140441 (x : ℕ) : ℤ :=
  (loop (λ (x _y) ↦ (((((loop (λ (x _y) ↦ x + x) x 1 - loop (λ (x y) ↦ x + y) x x) + x) + x) + x) / 2) - x) 2 x * 2) + 1

end Sequence