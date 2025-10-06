/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054874 sequence
-/

namespace Sequence

@[OEIS := A054874, offset := 0, maxIndex := 4, derive := true]
def A054874 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ if x ≤ 0 then 1 else loop (λ (x _y) ↦ x + x) x x) x 0

end Sequence