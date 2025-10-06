/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081069 sequence
-/

namespace Sequence

@[OEIS := A081069, offset := 0, maxIndex := 19, derive := true]
def A081069 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (2 * (x + x)) 2 1

end Sequence