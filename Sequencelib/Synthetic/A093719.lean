/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093719 sequence
-/

namespace Sequence

@[OEIS := A093719, offset := 0, maxIndex := 100, derive := true]
def A093719 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 3) ≤ 0 then 1 else x % 2

end Sequence