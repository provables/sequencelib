/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083196 sequence
-/

namespace Sequence

@[OEIS := A083196, offset := 0, maxIndex := 32, derive := true]
def A083196 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x * x)) + y) (λ (x _y) ↦ x * x) 2 x 1

end Sequence