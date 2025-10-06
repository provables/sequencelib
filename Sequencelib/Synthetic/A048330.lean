/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048330 sequence
-/

namespace Sequence

@[OEIS := A048330, offset := 0, maxIndex := 100, derive := true]
def A048330 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 1 + ((x / (1 + (x % 4))) + x)) x 3 / 2) / 2

end Sequence