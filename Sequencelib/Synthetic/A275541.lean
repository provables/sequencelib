/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275541 sequence
-/

namespace Sequence

@[OEIS := A275541, offset := 0, maxIndex := 20, derive := true]
def A275541 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 / (x * y)) x 1 + (loop (λ (x y) ↦ x * y) x 1 - 2)

end Sequence