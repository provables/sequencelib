/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A232599 sequence
-/

namespace Sequence

@[OEIS := A232599, offset := 0, maxIndex := 100, derive := true]
def A232599 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ ((y * y) * y) - x) x 0 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence