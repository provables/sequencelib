/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028693 sequence
-/

namespace Sequence

@[OEIS := A028693, offset := 1, maxIndex := 37, derive := true]
def A028693 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop (λ (x y) ↦ x * y) 4 x) y x - x) x 1

end Sequence