/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A335048 sequence
-/

namespace Sequence

@[OEIS := A335048, offset := 1, maxIndex := 51, derive := true]
def A335048 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 - if x ≤ 0 then 2 else x % 2) + x * x) + x

end Sequence