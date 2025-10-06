/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277990 sequence
-/

namespace Sequence

@[OEIS := A277990, offset := 0, maxIndex := 40, derive := true]
def A277990 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 + loop (λ (x _y) ↦ (x + x) + x) 3 x)) * (x + x)

end Sequence