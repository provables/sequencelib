/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016918 sequence
-/

namespace Sequence

@[OEIS := A016918, offset := 0, maxIndex := 12, derive := true]
def A016918 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * x) * y) (λ (x _y) ↦ x) 2 (2 * ((x + x) + x)) 1

end Sequence