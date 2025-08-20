/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A165020 sequence 
-/


namespace Sequence

@[OEIS := A165020, offset := 1, derive := true, maxIndex := 100]
def A165020 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + if (4 - x) ≤ 0 then 2 else 1)

end Sequence

