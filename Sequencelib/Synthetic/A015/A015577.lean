/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015577 sequence
-/

namespace Sequence

@[OEIS := A015577, offset := 0, maxIndex := 21, derive := true]
def A015577 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y * y) - x) (λ (_x y) ↦ (y + y) + y) x 0 1

end Sequence