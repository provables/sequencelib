/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229718 sequence
-/

namespace Sequence

@[OEIS := A229718, offset := 1, maxIndex := 14, derive := true]
def A229718 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x % 2) + loop (λ (x y) ↦ x + (2 + y)) (x - 1) 1) * 2

end Sequence