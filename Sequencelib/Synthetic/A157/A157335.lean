/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157335 sequence
-/

namespace Sequence

@[OEIS := A157335, offset := 0, maxIndex := 50, derive := true]
def A157335 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ ((2 * ((x + x) + x)) - y) + x) (λ (x _y) ↦ x) y 1 0 - x) x 1

end Sequence