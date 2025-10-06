/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242650 sequence
-/

namespace Sequence

@[OEIS := A242650, offset := 1, maxIndex := 12, derive := true]
def A242650 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x y) ↦ (x / (1 + 4)) + y) x x) * 3) * 2

end Sequence