/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136724 sequence
-/

namespace Sequence

@[OEIS := A136724, offset := 1, maxIndex := 56, derive := true]
def A136724 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((comprN (λ (x) ↦ if (loop (λ (x _y) ↦ x * x) 2 4 % (1 + x)) ≤ 0 then 1 else 0) x + 1) * 2) * 2

end Sequence