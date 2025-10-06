/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166752 sequence
-/

namespace Sequence

@[OEIS := A166752, offset := 0, maxIndex := 100, derive := true]
def A166752 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x - (y % 2)) + x) (λ (x _y) ↦ x) x 1 x

end Sequence