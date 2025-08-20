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
# A040002 sequence 
-/


namespace Sequence

@[OEIS := A040002, offset := 0, derive := true, maxIndex := 100]
def A040002 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + if x ≤ 0 then 0 else 2)

end Sequence

