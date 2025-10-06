/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084329 sequence
-/

namespace Sequence

@[OEIS := A084329, offset := 0, maxIndex := 16, derive := true]
def A084329 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * loop (λ (x _y) ↦ (x + x) + x) 2 x) + x) + y) (λ (x y) ↦ y - x) x 0 1

end Sequence