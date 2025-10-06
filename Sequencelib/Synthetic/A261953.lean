/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261953 sequence
-/

namespace Sequence

@[OEIS := A261953, offset := 0, maxIndex := 56, derive := true]
def A261953 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else 3 * ((x / 2) + x)

end Sequence