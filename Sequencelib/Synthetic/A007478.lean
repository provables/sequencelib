/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007478 sequence
-/

namespace Sequence

@[OEIS := A007478, offset := 0, maxIndex := 12, derive := true]
def A007478 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x - y) x 1 - x) * x) - x) / 2) / 2) + 1) / 2) / 2) + x) / 2) / 2) +
  1

end Sequence