/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257845 sequence 
-/


namespace Sequence

@[OEIS := A257845, offset := 0, derive := true, maxIndex := 100]
def A257845 (x : ℕ) : ℕ :=
  Int.toNat <| ((x % (1 + 4)) * (x / (1 + 4)))

end Sequence

