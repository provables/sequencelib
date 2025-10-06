/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054116 sequence
-/

namespace Sequence

@[OEIS := A054116, offset := 1, maxIndex := 98, derive := true]
def A054116 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y (y + (1 % y)) + x) x 1

end Sequence