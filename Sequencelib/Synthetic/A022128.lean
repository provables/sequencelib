/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022128 sequence
-/

namespace Sequence

@[OEIS := A022128, offset := 0, maxIndex := 29, derive := true]
def A022128 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ x) x 1 (loop (λ (x _y) ↦ 2 + (x + x)) 2 2)

end Sequence