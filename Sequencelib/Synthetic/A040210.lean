/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040210 sequence
-/

namespace Sequence

@[OEIS := A040210, offset := 0, maxIndex := 62, derive := true]
def A040210 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 2 - 1) * if x ≤ 0 then 1 else 2

end Sequence