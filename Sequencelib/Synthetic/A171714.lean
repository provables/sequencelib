/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171714 sequence
-/

namespace Sequence

@[OEIS := A171714, offset := 0, maxIndex := 35, derive := true]
def A171714 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x _y) ↦ (2 + x) * x) 2 x / 2)

end Sequence