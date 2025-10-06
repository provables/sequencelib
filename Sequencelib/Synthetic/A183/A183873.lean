/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183873 sequence
-/

namespace Sequence

@[OEIS := A183873, offset := 1, maxIndex := 80, derive := true]
def A183873 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((((2 + x) * x) / (1 + 4)) + x)

end Sequence