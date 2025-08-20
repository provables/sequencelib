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
# A008810 sequence 
-/


namespace Sequence

@[OEIS := A008810, offset := 0, derive := true, maxIndex := 100]
def A008810 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + (x * x)) / 3)

end Sequence

