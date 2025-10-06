/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261766 sequence
-/

namespace Sequence

@[OEIS := A261766, offset := 0, maxIndex := 22, derive := true]
def A261766 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ if x ≤ 0 then 1 else (x * y) - x) x 1 * (1 + x)

end Sequence