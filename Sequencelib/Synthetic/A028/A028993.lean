/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028993 sequence
-/

namespace Sequence

@[OEIS := A028993, offset := 0, maxIndex := 100, derive := true]
def A028993 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x _y) ↦ 2 + (2 * (x + x))) 2 x * x)

end Sequence