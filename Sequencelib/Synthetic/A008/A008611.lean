/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008611 sequence
-/

namespace Sequence

@[OEIS := A008611, offset := 0, maxIndex := 100, derive := true]
def A008611 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((2 * (((-x)) / 3)) + x)

end Sequence