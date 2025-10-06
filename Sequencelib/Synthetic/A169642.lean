/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169642 sequence
-/

namespace Sequence

@[OEIS := A169642, offset := 0, maxIndex := 100, derive := true]
def A169642 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x + x)) * ((2 - (x % 2)) * x)

end Sequence