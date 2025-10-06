/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048774 sequence
-/

namespace Sequence

@[OEIS := A048774, offset := 0, maxIndex := 5, derive := true]
def A048774 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (y / 2) + 1) (λ (x y) ↦ x * y) x 1 x

end Sequence