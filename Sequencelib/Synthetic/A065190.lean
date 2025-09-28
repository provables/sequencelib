/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065190 sequence 
-/


namespace Sequence

@[OEIS := A065190, offset := 1, derive := true, maxIndex := 100]
def A065190 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * (x % 2)) + if x ≤ 0 then 1 else x)

end Sequence

