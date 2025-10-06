/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164004 sequence
-/

namespace Sequence

@[OEIS := A164004, offset := 0, maxIndex := 100, derive := true]
def A164004 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + if (x - 1) ≤ 0 then 2 else x) * x) + x

end Sequence