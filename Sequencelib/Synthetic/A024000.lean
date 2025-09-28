/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024000 sequence 
-/


namespace Sequence

@[OEIS := A024000, offset := 0, derive := true, maxIndex := 100]
def A024000 (x : ℕ) : ℤ :=
  (1 - x)

end Sequence

