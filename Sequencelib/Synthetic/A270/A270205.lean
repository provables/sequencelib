/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270205 sequence
-/

namespace Sequence

@[OEIS := A270205, offset := 0, maxIndex := 100, derive := true]
def A270205 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * (((x * x) * (x - 2)) + x)

end Sequence