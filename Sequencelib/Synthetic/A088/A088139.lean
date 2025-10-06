/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088139 sequence
-/

namespace Sequence

@[OEIS := A088139, offset := 0, maxIndex := 100, derive := true]
def A088139 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (y - x) - (x * 2) * 2) x 0 1

end Sequence