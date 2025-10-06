/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070684 sequence
-/

namespace Sequence

@[OEIS := A070684, offset := 0, maxIndex := 79, derive := true]
def A070684 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) % (2 + loop (λ (x _y) ↦ (x * x) + x) 2 2)) 4 x

end Sequence