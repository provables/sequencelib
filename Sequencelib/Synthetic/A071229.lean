/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071229 sequence
-/

namespace Sequence

@[OEIS := A071229, offset := 0, maxIndex := 38, derive := true]
def A071229 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((1 + (2 + 4)) * (y * y)) + x) (x - 1) x

end Sequence