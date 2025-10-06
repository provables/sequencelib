/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A236398 sequence
-/

namespace Sequence

@[OEIS := A236398, offset := 1, maxIndex := 94, derive := true]
def A236398 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if ((2 + x) % 4) ≤ 0 then 2 else 1

end Sequence