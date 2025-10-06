/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069778 sequence
-/

namespace Sequence

@[OEIS := A069778, offset := 0, maxIndex := 100, derive := true]
def A069778 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((2 + ((2 + x) * x)) * x)

end Sequence