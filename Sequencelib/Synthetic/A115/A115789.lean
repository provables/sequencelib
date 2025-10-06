/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115789 sequence
-/

namespace Sequence

@[OEIS := A115789, offset := 0, maxIndex := 100, derive := true]
def A115789 (x : ℕ) : ℕ :=
  Int.toNat <| if (if x ≤ 0 then 1 else x % (1 + (2 + 4))) ≤ 0 then 0 else 1

end Sequence