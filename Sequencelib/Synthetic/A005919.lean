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
# A005919 sequence 
-/


namespace Sequence

@[OEIS := A005919, offset := 0, derive := true, maxIndex := 45]
def A005919 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + (2 + 4)) * (x * x)) + if x ≤ 0 then 1 else 2)

end Sequence

