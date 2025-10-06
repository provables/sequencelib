/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008615 sequence
-/

namespace Sequence

@[OEIS := A008615, offset := 0, maxIndex := 87, derive := true]
def A008615 (x : ℕ) : ℕ :=
  Int.toNat <| (x / 2) - x / 3

end Sequence