/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140139 sequence 
-/


namespace Sequence

@[OEIS := A140139, offset := 1, derive := true, maxIndex := 10]
def A140139 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (if (x - 1) ≤ 0 then 0 else x + x))

end Sequence

