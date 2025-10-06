/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135511 sequence
-/

namespace Sequence

@[OEIS := A135511, offset := 3, maxIndex := 100, derive := true]
def A135511 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 1 + if (x % 3) ≤ 0 then 0 else 2 - (x % 2)

end Sequence