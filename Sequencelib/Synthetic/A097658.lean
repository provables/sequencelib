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
# A097658 sequence 
-/


namespace Sequence

@[OEIS := A097658, offset := 0, derive := true, maxIndex := 19]
def A097658 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * ((2 + x) * x))

end Sequence

