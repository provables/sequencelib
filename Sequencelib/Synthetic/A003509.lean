/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003509 sequence
-/

namespace Sequence

@[OEIS := A003509, offset := 2, maxIndex := 7, derive := true]
def A003509 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 1 + ((x * x) + if x ≤ 0 then 1 else x)

end Sequence