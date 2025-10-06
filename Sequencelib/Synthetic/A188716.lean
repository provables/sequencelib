/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188716 sequence
-/

namespace Sequence

@[OEIS := A188716, offset := 0, maxIndex := 35, derive := true]
def A188716 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x _y) ↦ x + (x - 1)) x x - x)

end Sequence