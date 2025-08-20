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
# A132271 sequence 
-/


namespace Sequence

@[OEIS := A132271, offset := 0, derive := true, maxIndex := 61]
def A132271 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + ((x / 2) / (1 + 4))) * (1 + x))

end Sequence

