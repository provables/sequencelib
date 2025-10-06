/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115273 sequence
-/

namespace Sequence

@[OEIS := A115273, offset := 0, maxIndex := 86, derive := true]
def A115273 (x : ℕ) : ℕ :=
  Int.toNat <| (x / 3) * (x % 3)

end Sequence