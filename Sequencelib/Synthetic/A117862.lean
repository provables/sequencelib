/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117862 sequence
-/

namespace Sequence

@[OEIS := A117862, offset := 0, maxIndex := 100, derive := true]
def A117862 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ (2 * (x + 2)) + x) x 0 2

end Sequence