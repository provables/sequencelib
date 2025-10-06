/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053016 sequence
-/

namespace Sequence

@[OEIS := A053016, offset := 1, maxIndex := 5, derive := true]
def A053016 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + loop (λ (x _y) ↦ (x - (2 % x)) + x) x 2

end Sequence