/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089498 sequence
-/

namespace Sequence

@[OEIS := A089498, offset := 0, maxIndex := 11, derive := true]
def A089498 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (y + y) 0 2 - x) x 0

end Sequence