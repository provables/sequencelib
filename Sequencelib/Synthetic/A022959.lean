/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022959 sequence 
-/


namespace Sequence

@[OEIS := A022959, offset := 0, derive := true, maxIndex := 59]
def A022959 (x : ℕ) : ℤ :=
  (1 + (2 - x))

end Sequence

