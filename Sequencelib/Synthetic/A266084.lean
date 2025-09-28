/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266084 sequence 
-/


namespace Sequence

@[OEIS := A266084, offset := 0, derive := true, maxIndex := 66]
def A266084 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((2 * (2 - (x % (1 + 4)))) + x))

end Sequence

