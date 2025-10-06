/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022411 sequence
-/

namespace Sequence

@[OEIS := A022411, offset := 0, maxIndex := 100, derive := true]
def A022411 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) x 2 (1 + (2 + 4))

end Sequence