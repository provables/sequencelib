/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010121 sequence
-/

namespace Sequence

@[OEIS := A010121, offset := 0, maxIndex := 100, derive := true]
def A010121 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 4) ≤ 0 then 2 + if x ≤ 0 then 0 else 2 else 1

end Sequence