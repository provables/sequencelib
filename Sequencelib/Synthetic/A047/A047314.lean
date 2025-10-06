/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047314 sequence
-/

namespace Sequence

@[OEIS := A047314, offset := 1, maxIndex := 57, derive := true]
def A047314 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + ((2 * ((x - 2) / (1 + 4))) + x)

end Sequence