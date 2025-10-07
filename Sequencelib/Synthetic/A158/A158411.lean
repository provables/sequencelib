/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158411 sequence
-/

namespace Sequence

@[OEIS := A158411, offset := 0, maxIndex := 100, derive := true]
def A158411 (x : ℕ) : ℕ :=
  Int.toNat <| x - comprN (λ (_x) ↦ 0) ((x - 2) - 2)

end Sequence