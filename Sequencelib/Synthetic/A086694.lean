/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A086694 sequence
-/

namespace Sequence

@[OEIS := A086694, offset := 1, maxIndex := 100, derive := true]
def A086694 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ (x - if x ≤ 0 then 0 else 2) / 2) x x

end Sequence