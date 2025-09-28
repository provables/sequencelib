/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102899 sequence 
-/


namespace Sequence

@[OEIS := A102899, offset := 0, derive := true, maxIndex := 100]
def A102899 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + if (x % 3) ≤ 0 then 0 else x + x) / 3)

end Sequence

