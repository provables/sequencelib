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
# A266591 sequence 
-/


namespace Sequence

@[OEIS := A266591, offset := 0, derive := true, maxIndex := 100]
def A266591 (x : ℕ) : ℕ :=
  Int.toNat <| (1 / if (x % 2) ≤ 0 then 1 else x)

end Sequence

