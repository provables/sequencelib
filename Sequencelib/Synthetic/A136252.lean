/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136252 sequence
-/

namespace Sequence

@[OEIS := A136252, offset := 0, maxIndex := 100, derive := true]
def A136252 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ 2 + x) x 0 1

end Sequence