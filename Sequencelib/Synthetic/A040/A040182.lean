/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040182 sequence
-/

namespace Sequence

@[OEIS := A040182, offset := 0, maxIndex := 55, derive := true]
def A040182 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 2 - 2) * if x ≤ 0 then 1 else 2

end Sequence