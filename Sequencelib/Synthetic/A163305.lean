/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163305 sequence
-/

namespace Sequence

@[OEIS := A163305, offset := 1, maxIndex := 100, derive := true]
def A163305 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (y + y)) + x) + y) (λ (x y) ↦ x + y) x 0 1

end Sequence