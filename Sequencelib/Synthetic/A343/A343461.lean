/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343461 sequence
-/

namespace Sequence

@[OEIS := A343461, offset := 3, maxIndex := 89, derive := true]
def A343461 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 + (4 / (1 + x))

end Sequence