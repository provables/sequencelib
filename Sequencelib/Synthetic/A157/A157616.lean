/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157616 sequence
-/

namespace Sequence

@[OEIS := A157616, offset := 1, maxIndex := 12, derive := true]
def A157616 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x % 2) + x) * x) + if x ≤ 0 then 1 else 2

end Sequence