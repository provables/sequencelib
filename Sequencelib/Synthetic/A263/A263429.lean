/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263429 sequence
-/

namespace Sequence

@[OEIS := A263429, offset := 1, maxIndex := 4, derive := true]
def A263429 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (((((loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ (y * y) + x) x 3 1 / 2) + 2) / 2) + 2) + x) / 2) x 2

end Sequence