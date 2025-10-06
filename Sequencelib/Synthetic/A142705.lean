/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A142705 sequence
-/

namespace Sequence

@[OEIS := A142705, offset := 1, maxIndex := 53, derive := true]
def A142705 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + x) * x) / if (x % 2) ≤ 0 then 4 else 1

end Sequence