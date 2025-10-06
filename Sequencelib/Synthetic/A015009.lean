/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015009 sequence
-/

namespace Sequence

@[OEIS := A015009, offset := 0, maxIndex := 39, derive := true]
def A015009 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ ((1 + 4) * (y + y)) + 1) x 1 1

end Sequence