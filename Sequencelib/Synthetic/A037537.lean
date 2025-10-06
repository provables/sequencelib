/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037537 sequence
-/

namespace Sequence

@[OEIS := A037537, offset := 1, maxIndex := 23, derive := true]
def A037537 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((y % 2) + (x + x) * 2) + 1) (λ (x y) ↦ x + y) x 1 1

end Sequence