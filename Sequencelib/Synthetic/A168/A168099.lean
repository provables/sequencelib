/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168099 sequence
-/

namespace Sequence

@[OEIS := A168099, offset := 0, maxIndex := 72, derive := true]
def A168099 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((1 + loop (λ (x _y) ↦ 2 * (2 + x)) 2 2) / (1 + x)) + x) (1 + x) 1 - 2

end Sequence