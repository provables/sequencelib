/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065033 sequence
-/

namespace Sequence

@[OEIS := A065033, offset := 0, maxIndex := 100, derive := true]
def A065033 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else x - x / 2

end Sequence