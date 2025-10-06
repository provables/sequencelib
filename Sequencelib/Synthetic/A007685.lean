/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007685 sequence
-/

namespace Sequence

@[OEIS := A007685, offset := 0, maxIndex := 49, derive := true]
def A007685 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 2 * ((x - (x / y)) + x)) y x) x 1

end Sequence