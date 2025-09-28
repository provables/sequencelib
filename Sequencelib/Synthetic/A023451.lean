/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023451 sequence 
-/


namespace Sequence

@[OEIS := A023451, offset := 0, derive := true, maxIndex := 61]
def A023451 (x : ℕ) : ℤ :=
  ((x - 1) - 2 * 4)

end Sequence

