/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253909 sequence 
-/


namespace Sequence

@[OEIS := A253909, offset := 0, derive := true, maxIndex := 51]
def A253909 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else x * x

end Sequence

