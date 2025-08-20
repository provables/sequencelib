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
# A258837 sequence 
-/


namespace Sequence

@[OEIS := A258837, offset := 0, derive := true, maxIndex := 100]
def A258837 (x : ℕ) : ℤ :=
  (1 - (x * x))

end Sequence

