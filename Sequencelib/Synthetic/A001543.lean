/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001543 sequence
-/

namespace Sequence

@[OEIS := A001543, offset := 0, maxIndex := 11, derive := true]
def A001543 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + (1 + 4)) (λ (x y) ↦ x * y) x 1 1

end Sequence