/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001240 sequence
-/

namespace Sequence

@[OEIS := A001240, offset := 1, maxIndex := 99, derive := true]
def A001240 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ x + x) x 1 - 1) * (1 + loop (λ (x _y) ↦ (x + x) + x) (x + 1) 1)) + 1

end Sequence