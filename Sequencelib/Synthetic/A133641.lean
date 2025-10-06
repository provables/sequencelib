/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133641 sequence
-/

namespace Sequence

@[OEIS := A133641, offset := 1, maxIndex := 39, derive := true]
def A133641 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) x 2 1) - if x ≤ 0 then 2 else x

end Sequence