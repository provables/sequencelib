/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A165958 sequence 
-/


namespace Sequence

@[OEIS := A165958, offset := 1, derive := true, maxIndex := 10]
def A165958 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((if x ≤ 0 then 1 else x + x) % 3) * 2) + x) - 2)

end Sequence

