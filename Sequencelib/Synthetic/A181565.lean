/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181565 sequence
-/

namespace Sequence

@[OEIS := A181565, offset := 0, maxIndex := 30, derive := true]
def A181565 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x _y) ↦ x + x) x 3

end Sequence