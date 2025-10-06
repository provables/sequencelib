/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119972 sequence
-/

namespace Sequence

@[OEIS := A119972, offset := 1, maxIndex := 75, derive := true]
def A119972 (n : ℕ) : ℤ :=
  let x := n - 1
  (1 - (loop (λ (x _y) ↦ x / (1 + (x % 2))) x x % 4)) * (1 + x)

end Sequence