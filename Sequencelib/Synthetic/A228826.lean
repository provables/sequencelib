/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228826 sequence
-/

namespace Sequence

@[OEIS := A228826, offset := 0, maxIndex := 100, derive := true]
def A228826 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 2 1

end Sequence