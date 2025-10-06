/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000324 sequence
-/

namespace Sequence

@[OEIS := A000324, offset := 0, maxIndex := 11, derive := true]
def A000324 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 4 + x * y) (λ (x y) ↦ x * y) x 1 1

end Sequence