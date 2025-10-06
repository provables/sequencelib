/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062458 sequence
-/

namespace Sequence

@[OEIS := A062458, offset := 0, maxIndex := 60, derive := true]
def A062458 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((((2 - x) / 2) / 2) / 2) + 1) + x) / 2) + 1) + x) / 2) + x) + x) + 1

end Sequence