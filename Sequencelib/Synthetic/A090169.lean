/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090169 sequence
-/

namespace Sequence

@[OEIS := A090169, offset := 0, maxIndex := 64, derive := true]
def A090169 (x : ℕ) : ℕ :=
  Int.toNat <| (((x + x) / 3) + x / 2) + x

end Sequence