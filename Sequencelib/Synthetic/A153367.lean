/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153367 sequence
-/

namespace Sequence

@[OEIS := A153367, offset := 1, maxIndex := 24, derive := true]
def A153367 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x y) ↦ x + y) x 2 1

end Sequence