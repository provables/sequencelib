/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101348 sequence
-/

namespace Sequence

@[OEIS := A101348, offset := 0, maxIndex := 89, derive := true]
def A101348 (x : ℕ) : ℕ :=
  Int.toNat <| ((((2 * (x / 3)) - x) / 2) % 2) * ((x / 3) + 1)

end Sequence