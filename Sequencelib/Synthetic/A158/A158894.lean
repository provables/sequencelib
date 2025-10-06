/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158894 sequence
-/

namespace Sequence

@[OEIS := A158894, offset := 1, maxIndex := 100, derive := true]
def A158894 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 0 else y) x x + x) * 2) + 1) + 2

end Sequence