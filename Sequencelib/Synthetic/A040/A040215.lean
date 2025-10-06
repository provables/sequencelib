/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040215 sequence
-/

namespace Sequence

@[OEIS := A040215, offset := 0, maxIndex := 74, derive := true]
def A040215 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y) ↦ if x ≤ 0 then 1 + 4 else 0) x 2) * (4 + 1)

end Sequence