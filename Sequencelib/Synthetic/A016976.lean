/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016976 sequence
-/

namespace Sequence

@[OEIS := A016976, offset := 0, maxIndex := 16, derive := true]
def A016976 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 3 (loop (λ (x y) ↦ ((y * x) + x) + y) 2 x)

end Sequence