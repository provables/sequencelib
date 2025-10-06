/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A283793 sequence
-/

namespace Sequence

@[OEIS := A283793, offset := 0, maxIndex := 8, derive := true]
def A283793 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (((((3 * 2) + x) * (1 + x)) / 2) - x) + 2) x 2 + 2

end Sequence