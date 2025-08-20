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
# A000007 sequence 
-/


namespace Sequence

@[OEIS := A000007, offset := 0, derive := true, maxIndex := 100]
def A000007 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else 0

end Sequence

