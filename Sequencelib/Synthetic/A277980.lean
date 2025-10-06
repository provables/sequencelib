/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277980 sequence
-/

namespace Sequence

@[OEIS := A277980, offset := 0, maxIndex := 40, derive := true]
def A277980 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * (loop (λ (x _y) ↦ 2 + (x + x)) 2 x * x)

end Sequence