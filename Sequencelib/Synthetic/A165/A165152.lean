/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165152 sequence
-/

namespace Sequence

@[OEIS := A165152, offset := 0, maxIndex := 19, derive := true]
def A165152 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x) y 1 + (x + x) * 4) x 2 / 2

end Sequence