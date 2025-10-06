/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170255 sequence
-/

namespace Sequence

@[OEIS := A170255, offset := 0, maxIndex := 21, derive := true]
def A170255 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 + (2 + y)) * x) (λ (_x _y) ↦ 1) x 1 2

end Sequence