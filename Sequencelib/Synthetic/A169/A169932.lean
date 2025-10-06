/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169932 sequence
-/

namespace Sequence

@[OEIS := A169932, offset := 0, maxIndex := 74, derive := true]
def A169932 (x : ℕ) : ℕ :=
  Int.toNat <| x - (x % (2 + (2 * 4)))

end Sequence