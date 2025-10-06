/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057528 sequence
-/

namespace Sequence

@[OEIS := A057528, offset := 0, maxIndex := 6, derive := true]
def A057528 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y x) y x) y 1 * x) y x) x 1

end Sequence