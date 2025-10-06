/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056579 sequence
-/

namespace Sequence

@[OEIS := A056579, offset := 0, maxIndex := 29, derive := true]
def A056579 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((2 * (2 + (2 * x))) + x) * x) + 1) + 2) * x) + 1) + 2) * x) + 1) - x

end Sequence