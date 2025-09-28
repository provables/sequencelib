/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063094 sequence 
-/


namespace Sequence

@[OEIS := A063094, offset := 1, derive := true, maxIndex := 50]
def A063094 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * ((2 * (x + x)) - x / 2)) + if x ≤ 0 then 2 else 1)

end Sequence

