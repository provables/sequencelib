/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164827 sequence
-/

namespace Sequence

@[OEIS := A164827, offset := 1, maxIndex := 24, derive := true]
def A164827 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (y + y)) (λ (x y) ↦ (x + y) + (x * 2) * 2) x 2 0

end Sequence