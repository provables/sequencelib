/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173391 sequence
-/

namespace Sequence

@[OEIS := A173391, offset := 1, maxIndex := 25, derive := true]
def A173391 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 3 * (((2 + loop (λ (x _y) ↦ (x + x) + x) x 1) + x) + x)

end Sequence