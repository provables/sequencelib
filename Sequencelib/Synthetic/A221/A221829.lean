/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A221829 sequence
-/

namespace Sequence

@[OEIS := A221829, offset := 1, maxIndex := 100, derive := true]
def A221829 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 2 * ((x + x) + y)) (λ (x y) ↦ x + y) x 3 1 / ((2) * 2)

end Sequence