/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A217150 sequence
-/

namespace Sequence

@[OEIS := A217150, offset := 1, maxIndex := 4, derive := true]
def A217150 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((2 - (x / 3)) * 2) + x) * 2) + 2) * 2) - 1) + 2) - x / 2

end Sequence