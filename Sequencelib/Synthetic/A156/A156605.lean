/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156605 sequence
-/

namespace Sequence

@[OEIS := A156605, offset := 0, maxIndex := 25, derive := true]
def A156605 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (2 + (2 + loop (λ (x _y) ↦ 2 - (x + x)) (x + x) 1))

end Sequence