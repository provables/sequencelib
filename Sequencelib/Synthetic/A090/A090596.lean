/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090596 sequence
-/

namespace Sequence

@[OEIS := A090596, offset := 3, maxIndex := 37, derive := true]
def A090596 (n : ℕ) : ℤ :=
  let x := n - 3
  ((1 + loop (λ (x _y) ↦ x + x) (x / 2) 1) + loop (λ (x _y) ↦ x + x) x 1) / 3

end Sequence