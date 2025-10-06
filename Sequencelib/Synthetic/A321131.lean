/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A321131 sequence
-/

namespace Sequence

@[OEIS := A321131, offset := 2, maxIndex := 17, derive := true]
def A321131 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ (((((1 + loop (λ (x y) ↦ y - x) x 0) + x) / 2) - x) / 2) - x) 2 x + 2

end Sequence