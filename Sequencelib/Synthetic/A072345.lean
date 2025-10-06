/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072345 sequence
-/

namespace Sequence

@[OEIS := A072345, offset := 0, maxIndex := 55, derive := true]
def A072345 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y / x) + y) (λ (x _y) ↦ x) x 1 1

end Sequence