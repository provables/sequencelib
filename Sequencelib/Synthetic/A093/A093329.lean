/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093329 sequence
-/

namespace Sequence

@[OEIS := A093329, offset := 1, maxIndex := 6, derive := true]
def A093329 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ loop (λ (_x y) ↦ y) (x - 2) 2 + x) x 0

end Sequence