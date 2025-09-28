/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001399 sequence 
-/


namespace Sequence

@[OEIS := A001399, offset := 0, derive := true, maxIndex := 100]
def A001399 (x : ℕ) : ℕ :=
  Int.toNat <| (((((x * x) / (2 + 4)) + x) / 2) + 1)

end Sequence

