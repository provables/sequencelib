/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104373 sequence
-/

namespace Sequence

@[OEIS := A104373, offset := 1, maxIndex := 6, derive := true]
def A104373 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (x + if ((x / 2) / 2) ≤ 0 then 2 else x)

end Sequence