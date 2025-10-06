/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026484 sequence
-/

namespace Sequence

@[OEIS := A026484, offset := 1, maxIndex := 30, derive := true]
def A026484 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + loop (λ (x _y) ↦ x + 3) ((x - 2) - 2) x

end Sequence