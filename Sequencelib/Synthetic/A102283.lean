/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102283 sequence 
-/


namespace Sequence

@[OEIS := A102283, offset := 0, derive := true, maxIndex := 100]
def A102283 (x : ℕ) : ℤ :=
  (1 - ((1 - x) % 3))

end Sequence

