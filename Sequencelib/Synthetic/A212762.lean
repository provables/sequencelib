/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212762 sequence
-/

namespace Sequence

@[OEIS := A212762, offset := 0, maxIndex := 36, derive := true]
def A212762 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((x / 2) * ((x * x) / 2)) * x) 1 (1 + x) / 2

end Sequence