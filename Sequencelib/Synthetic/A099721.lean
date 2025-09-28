/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099721 sequence 
-/


namespace Sequence

@[OEIS := A099721, offset := 0, derive := true, maxIndex := 39]
def A099721 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + (x + x)) * (x * x))

end Sequence

