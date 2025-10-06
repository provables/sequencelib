/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215449 sequence
-/

namespace Sequence

@[OEIS := A215449, offset := 3, maxIndex := 8, derive := true]
def A215449 (n : ℕ) : ℤ :=
  let x := n - 3
  (((((((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1 * if x ≤ 0 then 1 else 2) * (x + 1)) + x) + 2) / 2) + 2) + x) + 2

end Sequence