/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115792 sequence
-/

namespace Sequence

@[OEIS := A115792, offset := 2, maxIndex := 39, derive := true]
def A115792 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((loop2 (λ (x y) ↦ ((y * y) / ((2 + y) + x)) + y) (λ (x y) ↦ x + y) x 1 1 / 2) + 1) / 2

end Sequence