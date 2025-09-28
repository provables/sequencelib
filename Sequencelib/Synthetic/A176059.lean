/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176059 sequence 
-/


namespace Sequence

@[OEIS := A176059, offset := 0, derive := true, maxIndex := 100]
def A176059 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 - (x % 2)))

end Sequence

