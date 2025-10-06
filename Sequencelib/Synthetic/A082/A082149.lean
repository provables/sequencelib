/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082149 sequence
-/

namespace Sequence

@[OEIS := A082149, offset := 0, maxIndex := 100, derive := true]
def A082149 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((x - 1) + x) + x) (x - 2) 1 * x) / 2) * (x - 1)

end Sequence