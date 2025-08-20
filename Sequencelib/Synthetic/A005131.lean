/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A005131 sequence 
-/


namespace Sequence

@[OEIS := A005131, offset := 0, derive := true, maxIndex := 100]
def A005131 (x : ℕ) : ℕ :=
  Int.toNat <| if ((x - 1) % 3) ≤ 0 then (x + x) / 3 else 1

end Sequence

