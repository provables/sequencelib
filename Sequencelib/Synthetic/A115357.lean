/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115357 sequence
-/

namespace Sequence

@[OEIS := A115357, offset := 0, maxIndex := 71, derive := true]
def A115357 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((x % 3) % 2) - x % 2)

end Sequence