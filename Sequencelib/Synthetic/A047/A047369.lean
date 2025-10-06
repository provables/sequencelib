/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047369 sequence
-/

namespace Sequence

@[OEIS := A047369, offset := 1, maxIndex := 100, derive := true]
def A047369 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((2 * (x / (1 + 4))) + x)

end Sequence