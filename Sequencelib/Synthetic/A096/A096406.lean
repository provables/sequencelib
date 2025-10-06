/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096406 sequence
-/

namespace Sequence

@[OEIS := A096406, offset := 1, maxIndex := 46, derive := true]
def A096406 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop2 (λ (_x y) ↦ 1 - (y + y)) (λ (x _y) ↦ x) x 1 0 + loop (λ (x _y) ↦ (-x)) x 1) * 2

end Sequence