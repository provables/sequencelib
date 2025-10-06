/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181975 sequence
-/

namespace Sequence

@[OEIS := A181975, offset := 1, maxIndex := 87, derive := true]
def A181975 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (((2 * (2 + x)) / 3) * 2) - y) (λ (x _y) ↦ x) x 1 2

end Sequence