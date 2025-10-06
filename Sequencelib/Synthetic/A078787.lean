/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078787 sequence
-/

namespace Sequence

@[OEIS := A078787, offset := 0, maxIndex := 45, derive := true]
def A078787 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x _y) ↦ 1 + (x * x)) 2 3 * x)

end Sequence