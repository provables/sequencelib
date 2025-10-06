/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063524 sequence
-/

namespace Sequence

@[OEIS := A063524, offset := 0, maxIndex := 100, derive := true]
def A063524 (x : ℕ) : ℕ :=
  Int.toNat <| 1 / if x ≤ 0 then 2 else x

end Sequence