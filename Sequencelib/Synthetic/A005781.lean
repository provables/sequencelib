/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005781 sequence
-/

namespace Sequence

@[OEIS := A005781, offset := 1, maxIndex := 6, derive := true]
def A005781 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ 2 + ((x / y) + y)) (λ (x _y) ↦ x) x 2 1

end Sequence