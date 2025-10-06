/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040311 sequence
-/

namespace Sequence

@[OEIS := A040311, offset := 0, maxIndex := 74, derive := true]
def A040311 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * loop (λ (x _y) ↦ if x ≤ 0 then 1 + 4 else 0) x 2) + 2) * 3

end Sequence