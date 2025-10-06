/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A232600 sequence
-/

namespace Sequence

@[OEIS := A232600, offset := 0, maxIndex := 100, derive := true]
def A232600 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - 1) - x) (λ (x _y) ↦ x + x) x x 0

end Sequence