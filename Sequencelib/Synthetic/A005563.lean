/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005563 sequence 
-/


namespace Sequence

@[OEIS := A005563, offset := 0, derive := true, maxIndex := 100]
def A005563 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + x) * x)

end Sequence

