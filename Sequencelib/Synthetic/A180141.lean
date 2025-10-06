/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180141 sequence
-/

namespace Sequence

@[OEIS := A180141, offset := 0, maxIndex := 22, derive := true]
def A180141 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y) ↦ 3 * ((x + y) + y)) (λ (x _y) ↦ x) x 2 1) / 3

end Sequence