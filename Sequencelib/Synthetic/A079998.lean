/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079998 sequence
-/

namespace Sequence

@[OEIS := A079998, offset := 0, maxIndex := 100, derive := true]
def A079998 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % (1 + 4)) ≤ 0 then 1 else 0

end Sequence