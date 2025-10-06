/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144390 sequence
-/

namespace Sequence

@[OEIS := A144390, offset := 1, maxIndex := 47, derive := true]
def A144390 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((((2 * (2 + x)) + x) * x) + x)

end Sequence