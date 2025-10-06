/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033175 sequence
-/

namespace Sequence

@[OEIS := A033175, offset := 0, maxIndex := 100, derive := true]
def A033175 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((1 + 4) * ((2 + x) * 2))) x 1

end Sequence