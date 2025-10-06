/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160542 sequence
-/

namespace Sequence

@[OEIS := A160542, offset := 1, maxIndex := 100, derive := true]
def A160542 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (((x / 2) / (1 + 4)) + x)

end Sequence