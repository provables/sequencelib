/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164950 sequence
-/

namespace Sequence

@[OEIS := A164950, offset := 1, maxIndex := 20, derive := true]
def A164950 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if loop2 (λ (x y) ↦ 2 + (x - y)) (λ (x _y) ↦ x) x x 0 ≤ 0 then 1 else 0

end Sequence