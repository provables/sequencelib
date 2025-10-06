/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028365 sequence
-/

namespace Sequence

@[OEIS := A028365, offset := 0, maxIndex := 56, derive := true]
def A028365 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y - 1) * (x * y)) (λ (_x y) ↦ y + y) x 1 2

end Sequence