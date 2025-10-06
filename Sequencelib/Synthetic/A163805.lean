/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163805 sequence
-/

namespace Sequence

@[OEIS := A163805, offset := 0, maxIndex := 100, derive := true]
def A163805 (x : ℕ) : ℤ :=
  if x ≤ 0 then 1 else loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 0 1

end Sequence