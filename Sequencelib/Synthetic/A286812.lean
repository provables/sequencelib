/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A286812 sequence
-/

namespace Sequence

@[OEIS := A286812, offset := 0, maxIndex := 31, derive := true]
def A286812 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ 2 + (x * y)) 4 1 - 1) - loop (λ (x _y) ↦ x + x) x 1

end Sequence