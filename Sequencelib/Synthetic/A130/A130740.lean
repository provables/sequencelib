/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130740 sequence
-/

namespace Sequence

@[OEIS := A130740, offset := 0, maxIndex := 4, derive := true]
def A130740 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 + (2 + loop (λ (x _y) ↦ x * x) (x + x) 2))

end Sequence