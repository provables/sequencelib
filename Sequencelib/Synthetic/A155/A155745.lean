/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155745 sequence
-/

namespace Sequence

@[OEIS := A155745, offset := 1, maxIndex := 7, derive := true]
def A155745 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((x * y) - (x / 2) / 2)) (λ (x _y) ↦ x) x 1 0

end Sequence