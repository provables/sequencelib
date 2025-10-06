/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159605 sequence
-/

namespace Sequence

@[OEIS := A159605, offset := 1, maxIndex := 100, derive := true]
def A159605 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (1 + (y + y)) * (x * y)) (λ (_x y) ↦ 2 + y) x 1 1

end Sequence