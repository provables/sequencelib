/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028387 sequence 
-/


namespace Sequence

@[OEIS := A028387, offset := 0, derive := true, maxIndex := 100]
def A028387 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (((2 + x) * x) + x))

end Sequence

