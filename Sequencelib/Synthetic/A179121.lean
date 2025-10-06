/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179121 sequence
-/

namespace Sequence

@[OEIS := A179121, offset := 1, maxIndex := 7, derive := true]
def A179121 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ (x * x) + x) x (1 + loop (λ (x _y) ↦ x * x) 2 2)

end Sequence