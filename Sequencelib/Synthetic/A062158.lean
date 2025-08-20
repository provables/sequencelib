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
# A062158 sequence 
-/


namespace Sequence

@[OEIS := A062158, offset := 0, derive := true, maxIndex := 100]
def A062158 (x : ℕ) : ℤ :=
  ((1 + (x * x)) * (x - 1))

end Sequence

