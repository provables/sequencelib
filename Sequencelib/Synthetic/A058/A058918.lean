/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058918 sequence
-/

namespace Sequence

@[OEIS := A058918, offset := 1, maxIndex := 6, derive := true]
def A058918 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 2 * (2 + y)) (λ (x _y) ↦ x) x 2 1 - 1

end Sequence