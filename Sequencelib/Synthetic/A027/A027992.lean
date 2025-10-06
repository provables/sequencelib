/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027992 sequence
-/

namespace Sequence

@[OEIS := A027992, offset := 0, maxIndex := 27, derive := true]
def A027992 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ (x - 1) + x) x (3 * x)

end Sequence