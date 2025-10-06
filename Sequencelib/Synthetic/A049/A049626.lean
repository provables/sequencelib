/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049626 sequence
-/

namespace Sequence

@[OEIS := A049626, offset := 0, maxIndex := 60, derive := true]
def A049626 (x : ℕ) : ℕ :=
  Int.toNat <| (((if x ≤ 0 then 1 else x - x % 2) + x / 3) + 2) + x

end Sequence