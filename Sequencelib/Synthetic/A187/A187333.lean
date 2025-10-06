/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187333 sequence
-/

namespace Sequence

@[OEIS := A187333, offset := 0, maxIndex := 75, derive := true]
def A187333 (x : ℕ) : ℕ :=
  Int.toNat <| (x + x) - if (x % (1 + 4)) ≤ 0 then 0 else 2

end Sequence