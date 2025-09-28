/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160457 sequence 
-/


namespace Sequence

@[OEIS := A160457, offset := 0, derive := true, maxIndex := 55]
def A160457 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + ((x - 2) * x))

end Sequence

