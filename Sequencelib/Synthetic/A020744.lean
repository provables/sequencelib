/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020744 sequence 
-/


namespace Sequence

@[OEIS := A020744, offset := 0, derive := true, maxIndex := 100]
def A020744 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 + (2 + x)))

end Sequence

