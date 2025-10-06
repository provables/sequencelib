/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010737 sequence
-/

namespace Sequence

@[OEIS := A010737, offset := 0, maxIndex := 34, derive := true]
def A010737 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop2 (λ (_x y) ↦ 1 + (2 + y)) (λ (x _y) ↦ x + x) x 2 1

end Sequence