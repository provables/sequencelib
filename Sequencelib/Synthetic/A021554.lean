/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021554 sequence
-/

namespace Sequence

@[OEIS := A021554, offset := 0, maxIndex := 98, derive := true]
def A021554 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ if (x % 2) ≤ 0 then 1 else 2 * 4) (x - 1) 0

end Sequence