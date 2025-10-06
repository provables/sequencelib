/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A217236 sequence
-/

namespace Sequence

@[OEIS := A217236, offset := 0, maxIndex := 3, derive := true]
def A217236 (x : ℕ) : ℕ :=
  Int.toNat <| (((((loop (λ (x y) ↦ 2 + (((2 + y) * x) + x)) 2 x * 2) / (1 + x)) + 2) * 2) + 1) + 2

end Sequence