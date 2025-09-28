/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130130 sequence 
-/


namespace Sequence

@[OEIS := A130130, offset := 0, derive := true, maxIndex := 98]
def A130130 (x : ℕ) : ℕ :=
  Int.toNat <| if (2 - x) ≤ 0 then 2 else x

end Sequence

