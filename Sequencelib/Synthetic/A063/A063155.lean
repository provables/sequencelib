/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063155 sequence
-/

namespace Sequence

@[OEIS := A063155, offset := 1, maxIndex := 49, derive := true]
def A063155 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * (2 * (2 + ((2 * (x + x)) + x)))) + if x ≤ 0 then 1 else 0

end Sequence