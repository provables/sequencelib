/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155158 sequence
-/

namespace Sequence

@[OEIS := A155158, offset := 0, maxIndex := 85, derive := true]
def A155158 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ (2 + 4) - y) (λ (x _y) ↦ x) x 0 2

end Sequence