/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021022 sequence
-/

namespace Sequence

@[OEIS := A021022, offset := 0, maxIndex := 98, derive := true]
def A021022 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 0 else 1 + 4

end Sequence