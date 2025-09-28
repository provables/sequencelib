/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229154 sequence 
-/


namespace Sequence

@[OEIS := A229154, offset := 2, derive := true, maxIndex := 100]
def A229154 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((if (x / 2) ≤ 0 then 2 else (2 + x) * (2 + x)) / 3)

end Sequence

