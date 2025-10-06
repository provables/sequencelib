/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117643 sequence
-/

namespace Sequence

@[OEIS := A117643, offset := 0, maxIndex := 20, derive := true]
def A117643 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ (x * y) - 1) x 2

end Sequence