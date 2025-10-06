/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108812 sequence
-/

namespace Sequence

@[OEIS := A108812, offset := 0, maxIndex := 74, derive := true]
def A108812 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((2 + 3) * ((x % (1 + 4)) * 2))

end Sequence