/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008458 sequence
-/

namespace Sequence

@[OEIS := A008458, offset := 0, maxIndex := 100, derive := true]
def A008458 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else 2 * ((x + x) + x)

end Sequence