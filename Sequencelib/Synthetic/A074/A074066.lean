/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074066 sequence
-/

namespace Sequence

@[OEIS := A074066, offset := 1, maxIndex := 69, derive := true]
def A074066 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((if x ≤ 0 then 1 else x + x) % 3) * 2) - 1) + x

end Sequence