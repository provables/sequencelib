/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136316 sequence 
-/


namespace Sequence

@[OEIS := A136316, offset := 0, derive := true, maxIndex := 55]
def A136316 (x : ℕ) : ℤ :=
  ((1 + ((2 * (2 + 4)) - x)) * (1 + x))

end Sequence

