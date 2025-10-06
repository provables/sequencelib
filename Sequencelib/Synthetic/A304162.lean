/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A304162 sequence
-/

namespace Sequence

@[OEIS := A304162, offset := 1, maxIndex := 100, derive := true]
def A304162 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((2 + (2 + (2 + (x * x)))) * x) * (x + 1)) + 1) + 2) + 2

end Sequence