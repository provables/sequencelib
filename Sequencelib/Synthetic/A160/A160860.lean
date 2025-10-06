/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160860 sequence
-/

namespace Sequence

@[OEIS := A160860, offset := 3, maxIndex := 8, derive := true]
def A160860 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((((1 + ((2 + x) * x)) * (2 + x)) / 3) - x) + 1

end Sequence