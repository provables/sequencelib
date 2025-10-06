/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168043 sequence
-/

namespace Sequence

@[OEIS := A168043, offset := 1, maxIndex := 38, derive := true]
def A168043 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) x 2 0 - x

end Sequence