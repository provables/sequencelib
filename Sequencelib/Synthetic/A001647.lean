/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001647 sequence
-/

namespace Sequence

@[OEIS := A001647, offset := 1, maxIndex := 8, derive := true]
def A001647 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (((x / 2) * y) / 2) + y) (λ (x y) ↦ x + y) x 1 0

end Sequence