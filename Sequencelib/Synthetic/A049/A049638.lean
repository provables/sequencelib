/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049638 sequence
-/

namespace Sequence

@[OEIS := A049638, offset := 0, maxIndex := 59, derive := true]
def A049638 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((2 + (x % 2)) * x) % 2) + if x ≤ 0 then 1 else 2) - x / 3) + x) + x) + (x + 1)

end Sequence