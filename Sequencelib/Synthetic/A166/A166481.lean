/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166481 sequence
-/

namespace Sequence

@[OEIS := A166481, offset := 1, maxIndex := 34, derive := true]
def A166481 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) + y) (λ (x y) ↦ x - y) x 1 3

end Sequence