/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004272 sequence
-/

namespace Sequence

@[OEIS := A004272, offset := 0, maxIndex := 55, derive := true]
def A004272 (x : ℕ) : ℕ :=
  Int.toNat <| x + comprN (λ (x : ℤ) ↦ 0) (((x - 2) - 2) - 2)

end Sequence