/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A308602 sequence
-/

namespace Sequence

@[OEIS := A308602, offset := 3, maxIndex := 66, derive := true]
def A308602 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 + ((2 * (2 + x)) + if x ≤ 0 then 2 else 1)

end Sequence