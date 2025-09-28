/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010876 sequence 
-/


namespace Sequence

@[OEIS := A010876, offset := 0, derive := true, maxIndex := 88]
def A010876 (x : ℕ) : ℕ :=
  Int.toNat <| (x % (1 + (2 + 4)))

end Sequence

