/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166925 sequence
-/

namespace Sequence

@[OEIS := A166925, offset := 1, maxIndex := 87, derive := true]
def A166925 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 * (2 * if (x % 3) ≤ 0 then 0 else 2))

end Sequence