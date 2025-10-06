/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282577 sequence
-/

namespace Sequence

@[OEIS := A282577, offset := 0, maxIndex := 100, derive := true]
def A282577 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x y) ↦ x - (1 + y)) x 1 0 * ((1 + x) % 2)

end Sequence