/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122461 sequence
-/

namespace Sequence

@[OEIS := A122461, offset := 0, maxIndex := 75, derive := true]
def A122461 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((x / 2) / 2)

end Sequence