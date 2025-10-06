/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113497 sequence
-/

namespace Sequence

@[OEIS := A113497, offset := 1, maxIndex := 100, derive := true]
def A113497 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x) x x 0 + x)

end Sequence