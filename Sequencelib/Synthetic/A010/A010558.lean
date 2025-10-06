/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010558 sequence
-/

namespace Sequence

@[OEIS := A010558, offset := 1, maxIndex := 9, derive := true]
def A010558 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ (1 + loop (λ (x y) ↦ y - x) x 2) + x) x 2 - 1) / (1 + x)) - x

end Sequence