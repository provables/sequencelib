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
# A080513 sequence 
-/


namespace Sequence

@[OEIS := A080513, offset := 0, derive := true, maxIndex := 100]
def A080513 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x - (x / 2)))

end Sequence

