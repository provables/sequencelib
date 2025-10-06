/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077985 sequence
-/

namespace Sequence

@[OEIS := A077985, offset := 0, maxIndex := 100, derive := true]
def A077985 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - x) - x) (λ (x _y) ↦ x) x 1 0

end Sequence