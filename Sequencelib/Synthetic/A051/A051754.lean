/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051754 sequence
-/

namespace Sequence

@[OEIS := A051754, offset := 2, maxIndex := 65, derive := true]
def A051754 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((1 + if ((x / 2) / 2) ≤ 0 then 0 else x) + x) / 3) * 2) + 2

end Sequence