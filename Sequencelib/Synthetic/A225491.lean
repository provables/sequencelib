/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225491 sequence
-/

namespace Sequence

@[OEIS := A225491, offset := 1, maxIndex := 40, derive := true]
def A225491 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((if x ≤ 0 then 1 else 2 + x) + x) + x) + x) * 2) - 1) + x) / (2 + x)

end Sequence