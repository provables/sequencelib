/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173857 sequence 
-/


namespace Sequence

@[OEIS := A173857, offset := 1, derive := true, maxIndex := 100]
def A173857 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((if x ≤ 0 then 2 else x % 3) / 2)

end Sequence

