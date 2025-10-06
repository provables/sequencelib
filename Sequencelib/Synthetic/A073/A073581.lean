/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073581 sequence
-/

namespace Sequence

@[OEIS := A073581, offset := 0, maxIndex := 4, derive := true]
def A073581 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) y x) (λ (_x y) ↦ y) x 1 y) x 1

end Sequence