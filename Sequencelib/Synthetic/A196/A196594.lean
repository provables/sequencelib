/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196594 sequence
-/

namespace Sequence

@[OEIS := A196594, offset := 1, maxIndex := 10, derive := true]
def A196594 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 - (x / (1 + if (x / 2) ≤ 0 then 0 else 2))) + x) + 1) + 2

end Sequence