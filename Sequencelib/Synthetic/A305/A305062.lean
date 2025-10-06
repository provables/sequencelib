/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A305062 sequence
-/

namespace Sequence

@[OEIS := A305062, offset := 0, maxIndex := 34, derive := true]
def A305062 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((1 + loop (λ (x _y) ↦ x + x) x 2) * 3) + 2) * 2) * 2) * 2) * 2

end Sequence