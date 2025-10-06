/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111404 sequence
-/

namespace Sequence

@[OEIS := A111404, offset := 0, maxIndex := 4, derive := true]
def A111404 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((x * x) * x) - x) 1 (loop (λ (x _y) ↦ (x * x) * x) x 3)

end Sequence