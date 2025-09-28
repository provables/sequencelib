/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330357 sequence 
-/


namespace Sequence

@[OEIS := A330357, offset := 0, derive := true, maxIndex := 54]
def A330357 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + ((1 + (x * x)) / 2))

end Sequence

