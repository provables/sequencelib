/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343844 sequence
-/

namespace Sequence

@[OEIS := A343844, offset := 1, maxIndex := 8, derive := true]
def A343844 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ ((loop (λ (x _y) ↦ x * x) 2 2 - 2) * loop (λ (x _y) ↦ x * x) 2 2) / (1 + x)) 2 x + x)
  x 1

end Sequence