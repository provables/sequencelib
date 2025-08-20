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
# A190621 sequence 
-/


namespace Sequence

@[OEIS := A190621, offset := 0, derive := true, maxIndex := 87]
def A190621 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 4) ≤ 0 then 0 else x

end Sequence

