/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168092 sequence 
-/


namespace Sequence

@[OEIS := A168092, offset := 0, derive := true, maxIndex := 47]
def A168092 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + if (x - 2) ≤ 0 then x else 3)

end Sequence

