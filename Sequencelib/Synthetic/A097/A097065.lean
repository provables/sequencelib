/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097065 sequence
-/

namespace Sequence

@[OEIS := A097065, offset := 0, maxIndex := 74, derive := true]
def A097065 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (y - 1) - x) x 1

end Sequence