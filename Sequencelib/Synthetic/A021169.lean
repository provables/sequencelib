/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021169 sequence
-/

namespace Sequence

@[OEIS := A021169, offset := 0, maxIndex := 98, derive := true]
def A021169 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * loop (λ (x _y) ↦ if x ≤ 0 then 3 else 0) x x

end Sequence