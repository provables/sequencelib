/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015270 sequence
-/

namespace Sequence

@[OEIS := A015270, offset := 0, maxIndex := 100, derive := true]
def A015270 (x : ℕ) : ℤ :=
  if (((x - 1) / 4) - 2) ≤ 0 then 1 else 0

end Sequence