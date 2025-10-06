/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193356 sequence
-/

namespace Sequence

@[OEIS := A193356, offset := 1, maxIndex := 100, derive := true]
def A193356 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (x % 2) ≤ 0 then 1 + x else 0

end Sequence