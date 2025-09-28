/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124193 sequence 
-/


namespace Sequence

@[OEIS := A124193, offset := 0, derive := true, maxIndex := 6]
def A124193 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + x) * ((x % 4) + x / 2)) / 2)

end Sequence

