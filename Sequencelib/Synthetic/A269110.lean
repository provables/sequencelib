/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269110 sequence
-/

namespace Sequence

@[OEIS := A269110, offset := 1, maxIndex := 10, derive := true]
def A269110 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else 2 + loop (λ (x y) ↦ x + y) (x / 2) x

end Sequence