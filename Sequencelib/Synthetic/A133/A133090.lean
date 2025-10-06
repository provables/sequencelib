/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133090 sequence 
-/


namespace Sequence

@[OEIS := A133090, offset := 1, derive := true, maxIndex := 10]
def A133090 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (if (x % 2) ≤ 0 then 1 + x else 0 + x)

end Sequence

