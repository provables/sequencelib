/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A305261 sequence
-/

namespace Sequence

@[OEIS := A305261, offset := 0, maxIndex := 100, derive := true]
def A305261 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 * (2 * loop (λ (x _y) ↦ 2 * (2 + x)) x 1)) - 2) * 3) * 2

end Sequence