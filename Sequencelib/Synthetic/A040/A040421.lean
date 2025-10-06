/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040421 sequence
-/

namespace Sequence

@[OEIS := A040421, offset := 0, maxIndex := 62, derive := true]
def A040421 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop (λ (x _y) ↦ 2 * (2 + x)) 2 2) * if x ≤ 0 then 1 else 2 - x % 2

end Sequence