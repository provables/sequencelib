/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048831 sequence
-/

namespace Sequence

@[OEIS := A048831, offset := 0, maxIndex := 4, derive := true]
def A048831 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ (x * x) * x) 2 x * y) - x) * x) + if x ≤ 0 then 1 else 0) x 1

end Sequence