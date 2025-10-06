/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004277 sequence
-/

namespace Sequence

@[OEIS := A004277, offset := 0, maxIndex := 66, derive := true]
def A004277 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else x + x

end Sequence