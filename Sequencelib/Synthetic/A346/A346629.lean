/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A346629 sequence
-/

namespace Sequence

@[OEIS := A346629, offset := 1, maxIndex := 22, derive := true]
def A346629 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x * (2 + y)) (λ (_x _y) ↦ 4 * 2) x 3 1 / 2

end Sequence