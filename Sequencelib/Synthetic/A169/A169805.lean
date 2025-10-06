/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169805 sequence
-/

namespace Sequence

@[OEIS := A169805, offset := 0, maxIndex := 76, derive := true]
def A169805 (x : ℕ) : ℕ :=
  Int.toNat <| ((x % (2 + (2 * 4))) + (x / 2) / (1 + 4)) * 2

end Sequence