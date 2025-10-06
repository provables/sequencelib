/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087101 sequence
-/

namespace Sequence

@[OEIS := A087101, offset := 1, maxIndex := 9, derive := true]
def A087101 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 % if (x % 3) ≤ 0 then 1 else x) / 2

end Sequence