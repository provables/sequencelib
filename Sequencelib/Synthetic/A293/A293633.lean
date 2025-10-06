/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293633 sequence
-/

namespace Sequence

@[OEIS := A293633, offset := 1, maxIndex := 100, derive := true]
def A293633 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ 2 + x) x 1 0 / 2) / 2) + 1

end Sequence