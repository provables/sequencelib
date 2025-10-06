/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257936 sequence
-/

namespace Sequence

@[OEIS := A257936, offset := 0, maxIndex := 86, derive := true]
def A257936 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 2 + 4 else 1

end Sequence