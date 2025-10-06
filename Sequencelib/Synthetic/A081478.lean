/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081478 sequence
-/

namespace Sequence

@[OEIS := A081478, offset := 1, maxIndex := 25, derive := true]
def A081478 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ x * y) (λ (x y) ↦ y - x) x 1 2

end Sequence