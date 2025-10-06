/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A248598 sequence
-/

namespace Sequence

@[OEIS := A248598, offset := 0, maxIndex := 100, derive := true]
def A248598 (x : ℕ) : ℕ :=
  Int.toNat <| ((((if (x * x) ≤ 0 then 0 else loop (λ (_x _y) ↦ (2 + 4) * 2) x 1 + x) * 2) - 1) * (x - 1)) * x

end Sequence