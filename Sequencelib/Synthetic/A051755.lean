/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051755 sequence
-/

namespace Sequence

@[OEIS := A051755, offset := 2, maxIndex := 100, derive := true]
def A051755 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 + (if x ≤ 0 then 1 else x + x)

end Sequence