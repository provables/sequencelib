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
# A020761 sequence 
-/


namespace Sequence

@[OEIS := A020761, offset := 0, derive := true, maxIndex := 99]
def A020761 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 + 4 else 0

end Sequence

