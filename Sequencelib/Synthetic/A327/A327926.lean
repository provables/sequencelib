/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327926 sequence
-/

namespace Sequence

@[OEIS := A327926, offset := 0, maxIndex := 14, derive := true]
def A327926 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ 1 + ((2 + x) * x)) 2 2 * x) - x) x 1

end Sequence