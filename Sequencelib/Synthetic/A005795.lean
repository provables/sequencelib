/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005795 sequence 
-/


namespace Sequence

@[OEIS := A005795, offset := 1, derive := true, maxIndex := 7]
def A005795 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + (((x - 1) / (1 + 4)) + x)) * 2)

end Sequence

