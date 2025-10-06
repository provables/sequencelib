/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140438 sequence 
-/


namespace Sequence

@[OEIS := A140438, offset := 1, derive := true, maxIndex := 10]
def A140438 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (((x / 2) - 2) - 2) ≤ 0 then 1 else 2

end Sequence

