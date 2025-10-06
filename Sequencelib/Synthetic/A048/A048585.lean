/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048585 sequence
-/

namespace Sequence

@[OEIS := A048585, offset := 0, maxIndex := 100, derive := true]
def A048585 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y * y) / (1 + x)) + x) (λ (x _y) ↦ x) (2 + x) 2 2 + 2

end Sequence