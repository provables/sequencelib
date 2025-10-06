/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020744 sequence
-/

namespace Sequence

@[OEIS := A020744, offset := 0, maxIndex := 100, derive := true]
def A020744 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * (2 + (2 + x))

end Sequence