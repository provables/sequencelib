/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122004 sequence
-/

namespace Sequence

@[OEIS := A122004, offset := 1, maxIndex := 5, derive := true]
def A122004 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((2 + ((x + x) + x)) * ((1 - (x % 3)) + x)) / 2) + 1

end Sequence