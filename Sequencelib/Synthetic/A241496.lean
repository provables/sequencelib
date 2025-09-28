/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A241496 sequence 
-/


namespace Sequence

@[OEIS := A241496, offset := 0, derive := true, maxIndex := 54]
def A241496 (x : ℕ) : ℕ :=
  Int.toNat <| ((((2 + x) / (2 - (x % 2))) * (2 + x)) / 2)

end Sequence

