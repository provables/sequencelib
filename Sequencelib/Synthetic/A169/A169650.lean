/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169650 sequence
-/

namespace Sequence

@[OEIS := A169650, offset := 1, maxIndex := 100, derive := true]
def A169650 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (2 * (x + y)) + x) (λ (_x y) ↦ y + y) x 0 2 + 1) + 2

end Sequence