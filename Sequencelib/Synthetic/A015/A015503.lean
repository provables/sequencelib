/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015503 sequence
-/

namespace Sequence

@[OEIS := A015503, offset := 1, maxIndex := 49, derive := true]
def A015503 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ 1 + (2 * (2 * y))) x 1 1 + 1) / 2

end Sequence