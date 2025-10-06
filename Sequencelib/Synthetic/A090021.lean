/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090021 sequence
-/

namespace Sequence

@[OEIS := A090021, offset := 0, maxIndex := 20, derive := true]
def A090021 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (x + x) + x) x 1 - 2) * (loop (λ (x _y) ↦ x + x) x 1 - 1)

end Sequence