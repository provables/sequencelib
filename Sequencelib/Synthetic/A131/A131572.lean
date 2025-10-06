/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131572 sequence
-/

namespace Sequence

@[OEIS := A131572, offset := 0, maxIndex := 100, derive := true]
def A131572 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 0 else loop (λ (x _y) ↦ x + x) (x / 2) 1

end Sequence