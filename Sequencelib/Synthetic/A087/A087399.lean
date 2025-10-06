/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087399 sequence
-/

namespace Sequence

@[OEIS := A087399, offset := 1, maxIndex := 3, derive := true]
def A087399 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ x * y) (2 + loop (λ (x y) ↦ x + y) x 2) 1 + 1

end Sequence