/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090638 sequence
-/

namespace Sequence

@[OEIS := A090638, offset := 1, maxIndex := 29, derive := true]
def A090638 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ ((((-x)) - (x / 2) / 2) / 2) + y) x 0

end Sequence