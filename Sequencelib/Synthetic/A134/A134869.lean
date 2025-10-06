/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134869 sequence
-/

namespace Sequence

@[OEIS := A134869, offset := 1, maxIndex := 100, derive := true]
def A134869 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else 2 + loop (λ (x y) ↦ x + y) x x

end Sequence