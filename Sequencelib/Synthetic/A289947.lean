/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289947 sequence
-/

namespace Sequence

@[OEIS := A289947, offset := 1, maxIndex := 3, derive := true]
def A289947 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x y) ↦ loop (λ (x _y) ↦ 2 + (2 + (x * x))) 2 y + x) x 1) + 2

end Sequence