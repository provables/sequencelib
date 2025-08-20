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
# A091703 sequence 
-/


namespace Sequence

@[OEIS := A091703, offset := 0, derive := true, maxIndex := 100]
def A091703 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % (1 + 4)) ≤ 0 then 0 else x

end Sequence

