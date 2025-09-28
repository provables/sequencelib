/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032765 sequence 
-/


namespace Sequence

@[OEIS := A032765, offset := 0, derive := true, maxIndex := 55]
def A032765 (x : ℕ) : ℕ :=
  Int.toNat <| (((2 + x) * x) / 3)

end Sequence

