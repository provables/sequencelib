/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177706 sequence
-/

namespace Sequence

@[OEIS := A177706, offset := 0, maxIndex := 100, derive := true]
def A177706 (x : ℕ) : ℕ :=
  Int.toNat <| if ((1 + x) % (1 + 4)) ≤ 0 then 2 else 1

end Sequence