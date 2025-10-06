/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220161 sequence
-/

namespace Sequence

@[OEIS := A220161, offset := 0, maxIndex := 9, derive := true]
def A220161 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x _y) ↦ x * x) x 2)

end Sequence