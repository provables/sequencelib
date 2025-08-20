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
# A071289 sequence 
-/


namespace Sequence

@[OEIS := A071289, offset := 0, derive := true, maxIndex := 100]
def A071289 (x : ℕ) : ℕ :=
  Int.toNat <| (((((2 * (x / 2)) + x) * (x * x)) / 2) + x)

end Sequence

