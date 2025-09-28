/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033996 sequence 
-/


namespace Sequence

@[OEIS := A033996, offset := 0, derive := true, maxIndex := 100]
def A033996 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 * ((x * x) + x)))

end Sequence

