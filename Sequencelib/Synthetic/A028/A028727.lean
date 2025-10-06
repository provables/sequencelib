/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028727 sequence
-/

namespace Sequence

@[OEIS := A028727, offset := 1, maxIndex := 6, derive := true]
def A028727 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 + (2 + loop (λ (x y) ↦ y - x) x 2)) x 1 + 2

end Sequence