/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277978 sequence
-/

namespace Sequence

@[OEIS := A277978, offset := 0, maxIndex := 45, derive := true]
def A277978 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * (((2 + x) * x) + x)

end Sequence