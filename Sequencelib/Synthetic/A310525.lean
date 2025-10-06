/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A310525 sequence
-/

namespace Sequence

@[OEIS := A310525, offset := 0, maxIndex := 49, derive := true]
def A310525 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (((((((((1 + (x / 2)) / 2) + x) / 2) / 2) + 2) % 2) + x / 2) + 2) * 2) x 1

end Sequence