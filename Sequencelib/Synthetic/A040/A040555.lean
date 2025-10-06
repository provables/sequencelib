/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040555 sequence
-/

namespace Sequence

@[OEIS := A040555, offset := 0, maxIndex := 62, derive := true]
def A040555 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) (loop (λ (x _y) ↦ if x ≤ 0 then 2 else 0) x 1 + 2) 3

end Sequence