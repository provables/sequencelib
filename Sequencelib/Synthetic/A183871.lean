/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183871 sequence
-/

namespace Sequence

@[OEIS := A183871, offset := 1, maxIndex := 80, derive := true]
def A183871 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + ((((2 + x) * x) / (1 + 4)) + x)

end Sequence