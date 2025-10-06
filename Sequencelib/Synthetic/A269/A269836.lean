/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269836 sequence
-/

namespace Sequence

@[OEIS := A269836, offset := 1, maxIndex := 3, derive := true]
def A269836 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + if x ≤ 0 then 1 else loop (λ (x _y) ↦ x * x) (x * 2) 2

end Sequence