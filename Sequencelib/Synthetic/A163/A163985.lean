/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163985 sequence 
-/


namespace Sequence

@[OEIS := A163985, offset := 0, derive := true, maxIndex := 100]
def A163985 (x : ℕ) : ℕ :=
  Int.toNat <| ((if (x - 2) ≤ 0 then 1 else x - 1) + x)

end Sequence

