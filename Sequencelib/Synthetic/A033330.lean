/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033330 sequence
-/

namespace Sequence

@[OEIS := A033330, offset := 1, maxIndex := 92, derive := true]
def A033330 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + (2 * 4)) / (1 + x)

end Sequence