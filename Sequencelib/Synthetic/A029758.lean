/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A029758 sequence
-/

namespace Sequence

@[OEIS := A029758, offset := 0, maxIndex := 11, derive := true]
def A029758 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y + x) + y) * x) (λ (x _y) ↦ x) x 1 0

end Sequence