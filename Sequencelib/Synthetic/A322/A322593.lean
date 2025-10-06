/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A322593 sequence
-/

namespace Sequence

@[OEIS := A322593, offset := 0, maxIndex := 33, derive := true]
def A322593 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((2 * (x * x)) + loop (λ (x _y) ↦ x + x) x 1)

end Sequence