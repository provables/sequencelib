/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105396 sequence
-/

namespace Sequence

@[OEIS := A105396, offset := 3, maxIndex := 100, derive := true]
def A105396 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 + if (x % 3) ≤ 0 then 1 else 4

end Sequence