/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173276 sequence
-/

namespace Sequence

@[OEIS := A173276, offset := 0, maxIndex := 69, derive := true]
def A173276 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((x + x) / (1 + 4))

end Sequence