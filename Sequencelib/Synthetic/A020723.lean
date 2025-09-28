/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020723 sequence 
-/


namespace Sequence

@[OEIS := A020723, offset := 0, derive := true, maxIndex := 73]
def A020723 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((2 * 4) + x))

end Sequence

