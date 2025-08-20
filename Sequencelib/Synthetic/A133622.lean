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
# A133622 sequence 
-/


namespace Sequence

@[OEIS := A133622, offset := 1, derive := true, maxIndex := 87]
def A133622 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (x % 2) ≤ 0 then 1 else 2 + (x / 2)

end Sequence

