/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195312 sequence
-/

namespace Sequence

@[OEIS := A195312, offset := 0, maxIndex := 100, derive := true]
def A195312 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 2) ≤ 0 then (x / 2) + 2 * (x + x) else x

end Sequence