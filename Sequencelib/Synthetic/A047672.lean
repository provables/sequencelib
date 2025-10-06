/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047672 sequence
-/

namespace Sequence

@[OEIS := A047672, offset := 1, maxIndex := 37, derive := true]
def A047672 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (((2 * (2 + ((x * x) + x))) + x) * x)

end Sequence