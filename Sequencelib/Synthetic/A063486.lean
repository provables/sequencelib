/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063486 sequence
-/

namespace Sequence

@[OEIS := A063486, offset := 0, maxIndex := 10, derive := true]
def A063486 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 + (2 + loop (λ (x _y) ↦ x * x) x 2))

end Sequence