/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118015 sequence 
-/


namespace Sequence

@[OEIS := A118015, offset := 0, derive := true, maxIndex := 59]
def A118015 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) / (1 + 4))

end Sequence

