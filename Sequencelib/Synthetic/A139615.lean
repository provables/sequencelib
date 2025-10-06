/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139615 sequence
-/

namespace Sequence

@[OEIS := A139615, offset := 0, maxIndex := 40, derive := true]
def A139615 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 - x) + loop (λ (x _y) ↦ x + x) (2 + y) x) 2 x - 1

end Sequence