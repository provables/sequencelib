/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A302710 sequence
-/

namespace Sequence

@[OEIS := A302710, offset := 0, maxIndex := 40, derive := true]
def A302710 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((((((loop (λ (x y) ↦ ((y * y) + x) + y) x 0 - x) * 2) - x) - x) + 1) - x) + x) - 1) * 2) + 1) + x) * x) + 1) / 2

end Sequence