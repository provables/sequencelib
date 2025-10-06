/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007068 sequence
-/

namespace Sequence

@[OEIS := A007068, offset := 1, maxIndex := 100, derive := true]
def A007068 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ if (y - x) ≤ 0 then x * 2 else x) x 1 2

end Sequence