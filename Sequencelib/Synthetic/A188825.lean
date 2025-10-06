/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188825 sequence
-/

namespace Sequence

@[OEIS := A188825, offset := 1, maxIndex := 25, derive := true]
def A188825 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop2 (λ (x y) ↦ x + (x * y)) (λ (_x _y) ↦ 2) x 2 1) * 2

end Sequence