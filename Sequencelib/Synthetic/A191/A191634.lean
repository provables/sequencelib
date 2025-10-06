/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191634 sequence
-/

namespace Sequence

@[OEIS := A191634, offset := 1, maxIndex := 30, derive := true]
def A191634 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y) ↦ (x + x) + x) (1 + x) 1) / ((2 * (2 + x)) + x)

end Sequence