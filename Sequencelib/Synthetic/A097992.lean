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
# A097992 sequence 
-/


namespace Sequence

@[OEIS := A097992, offset := 0, derive := true, maxIndex := 89]
def A097992 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((x / 2) / 3))

end Sequence

