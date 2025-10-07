/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135279 sequence
-/

namespace Sequence

@[OEIS := A135279, offset := 1, maxIndex := 11, derive := true]
def A135279 (n : ℕ) : ℤ :=
  let x := n - 1
  (comprN (λ (x) ↦ if ((loop (λ (x y) ↦ x * y) x 1 % (1 + x)) - 1) ≤ 0 then 1 else 0) x + 1) / 2

end Sequence