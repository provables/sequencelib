/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037609 sequence
-/

namespace Sequence

@[OEIS := A037609, offset := 1, maxIndex := 17, derive := true]
def A037609 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (1 + (x % 3)) + loop (λ (x _y) ↦ (x + x) + x) 2 x) x 1

end Sequence