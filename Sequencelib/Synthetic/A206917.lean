/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A206917 sequence
-/

namespace Sequence

@[OEIS := A206917, offset := 0, maxIndex := 29, derive := true]
def A206917 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (y * (1 + (2 - (x % 2)))) + y) (λ (x _y) ↦ x + x) x 1 1 / 2

end Sequence