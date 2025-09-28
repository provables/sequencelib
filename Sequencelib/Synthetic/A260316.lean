/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A260316 sequence 
-/


namespace Sequence

@[OEIS := A260316, offset := 0, derive := true, maxIndex := 100]
def A260316 (x : ℕ) : ℕ :=
  Int.toNat <| if (1 - (x % 3)) ≤ 0 then x - 1 else x / 3

end Sequence

