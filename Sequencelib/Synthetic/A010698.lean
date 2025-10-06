/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010698 sequence
-/

namespace Sequence

@[OEIS := A010698, offset := 0, maxIndex := 80, derive := true]
def A010698 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * if (x % 2) ≤ 0 then 1 else 4

end Sequence