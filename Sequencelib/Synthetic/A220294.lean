/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220294 sequence
-/

namespace Sequence

@[OEIS := A220294, offset := 0, maxIndex := 7, derive := true]
def A220294 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ (x * x) - x) 1 (loop (λ (x _y) ↦ x * x) x 2)

end Sequence