/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A125763 sequence
-/

namespace Sequence

@[OEIS := A125763, offset := 1, maxIndex := 5, derive := true]
def A125763 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x - 1) + y) (λ (x _y) ↦ x + loop (λ (x _y) ↦ x * x) 2 x) x 1 2

end Sequence