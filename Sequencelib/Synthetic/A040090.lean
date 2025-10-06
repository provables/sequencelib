/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040090 sequence
-/

namespace Sequence

@[OEIS := A040090, offset := 0, maxIndex := 62, derive := true]
def A040090 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * ((1 + 4) * if x ≤ 0 then 1 else 2)

end Sequence