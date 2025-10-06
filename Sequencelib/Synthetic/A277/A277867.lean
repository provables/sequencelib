/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277867 sequence
-/

namespace Sequence

@[OEIS := A277867, offset := 0, maxIndex := 100, derive := true]
def A277867 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y % 2) + x) + x) (λ (_x y) ↦ y) x 2 x / 2

end Sequence