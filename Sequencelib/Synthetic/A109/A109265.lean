/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109265 sequence
-/

namespace Sequence

@[OEIS := A109265, offset := 0, maxIndex := 100, derive := true]
def A109265 (x : ℕ) : ℤ :=
  if x ≤ 0 then 1 else loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 2 2

end Sequence