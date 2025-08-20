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
# A086161 sequence 
-/


namespace Sequence

@[OEIS := A086161, offset := 0, derive := true, maxIndex := 74]
def A086161 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((1 + x) / 3))

end Sequence

