/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106232 sequence
-/

namespace Sequence

@[OEIS := A106232, offset := 1, maxIndex := 100, derive := true]
def A106232 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * ((x * x) + if x ≤ 0 then 2 else x)

end Sequence