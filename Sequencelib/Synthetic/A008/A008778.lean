/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008778 sequence
-/

namespace Sequence

@[OEIS := A008778, offset := 0, maxIndex := 45, derive := true]
def A008778 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ loop (λ (x y) ↦ 2 + (x + y)) y x) x x

end Sequence