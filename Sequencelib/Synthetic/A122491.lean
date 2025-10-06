/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122491 sequence
-/

namespace Sequence

@[OEIS := A122491, offset := 0, maxIndex := 36, derive := true]
def A122491 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x - 1) + y) (λ (x _y) ↦ x) x 0 x

end Sequence