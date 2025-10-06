/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063808 sequence
-/

namespace Sequence

@[OEIS := A063808, offset := 0, maxIndex := 92, derive := true]
def A063808 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + (y + y)) (λ (x _y) ↦ 2 + (x % 2)) x 1 1

end Sequence