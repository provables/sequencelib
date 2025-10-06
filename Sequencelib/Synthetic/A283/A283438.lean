/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A283438 sequence
-/

namespace Sequence

@[OEIS := A283438, offset := 0, maxIndex := 4, derive := true]
def A283438 (x : ℕ) : ℕ :=
  Int.toNat <| (x / 2) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 1 0

end Sequence