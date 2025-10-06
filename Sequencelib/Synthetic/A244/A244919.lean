/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A244919 sequence
-/

namespace Sequence

@[OEIS := A244919, offset := 2, maxIndex := 73, derive := true]
def A244919 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + if x ≤ 0 then 1 else 2

end Sequence