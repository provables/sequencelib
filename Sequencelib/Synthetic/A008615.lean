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
# A008615 sequence 
-/


namespace Sequence

@[OEIS := A008615, offset := 0, derive := true, maxIndex := 88]
def A008615 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / 2) - x / 3)

end Sequence

