/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004274 sequence
-/

namespace Sequence

@[OEIS := A004274, offset := 0, maxIndex := 67, derive := true]
def A004274 (x : ℕ) : ℕ :=
  Int.toNat <| x + comprN (λ (_x) ↦ 0) ((x - 1) - 2)

end Sequence