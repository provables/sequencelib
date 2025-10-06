/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269237 sequence
-/

namespace Sequence

@[OEIS := A269237, offset := 0, maxIndex := 35, derive := true]
def A269237 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((((((x * x) * x) - x) * (1 + 4)) / 2) + x) * x) 1 (1 + x)

end Sequence