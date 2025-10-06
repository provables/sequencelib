/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A315525 sequence
-/

namespace Sequence

@[OEIS := A315525, offset := 0, maxIndex := 49, derive := true]
def A315525 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (_x y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 - 2) * y) x 2 + 1) * 2) / (4 + 1)

end Sequence