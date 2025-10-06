/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040381 sequence
-/

namespace Sequence

@[OEIS := A040381, offset := 0, maxIndex := 62, derive := true]
def A040381 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + loop (λ (x _y) ↦ if x ≤ 0 then 2 else 0) x x) * (2 + (2 * 4))

end Sequence