/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083297 sequence
-/

namespace Sequence

@[OEIS := A083297, offset := 0, maxIndex := 100, derive := true]
def A083297 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - x) * 2) (λ (x _y) ↦ (2 * (x + x)) * 3) x 1 2

end Sequence