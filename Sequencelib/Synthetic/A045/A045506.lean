/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A045506 sequence 
-/


namespace Sequence

@[OEIS := A045506, offset := 0, derive := true, maxIndex := 10]
def A045506 (x : ℕ) : ℤ :=
  ((x - (if x ≤ 0 then 2 else x / 2)) + x)

end Sequence

