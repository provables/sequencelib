/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226576 sequence
-/

namespace Sequence

@[OEIS := A226576, offset := 0, maxIndex := 100, derive := true]
def A226576 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 * if (x % 3) ≤ 0 then 1 else 4) + x) / 3

end Sequence