/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169609 sequence
-/

namespace Sequence

@[OEIS := A169609, offset := 0, maxIndex := 100, derive := true]
def A169609 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + if (x % 3) ≤ 0 then 0 else 2

end Sequence