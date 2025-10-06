/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255910 sequence
-/

namespace Sequence

@[OEIS := A255910, offset := 1, maxIndex := 86, derive := true]
def A255910 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 * if x ≤ 0 then 0 else 3)

end Sequence