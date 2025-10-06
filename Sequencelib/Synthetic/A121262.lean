/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121262 sequence
-/

namespace Sequence

@[OEIS := A121262, offset := 0, maxIndex := 100, derive := true]
def A121262 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 4) ≤ 0 then 1 else 0

end Sequence