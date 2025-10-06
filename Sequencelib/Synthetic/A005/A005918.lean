/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005918 sequence
-/

namespace Sequence

@[OEIS := A005918, offset := 0, maxIndex := 100, derive := true]
def A005918 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * (x * x)) + if x ≤ 0 then 1 else 2

end Sequence