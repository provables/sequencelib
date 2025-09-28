/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010676 sequence 
-/


namespace Sequence

@[OEIS := A010676, offset := 0, derive := true, maxIndex := 81]
def A010676 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + 4) * (x % 2))

end Sequence

