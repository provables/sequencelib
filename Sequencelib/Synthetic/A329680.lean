/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329680 sequence 
-/


namespace Sequence

@[OEIS := A329680, offset := 0, derive := true, maxIndex := 76]
def A329680 (x : ℕ) : ℕ :=
  Int.toNat <| (1 / if (x % 3) ≤ 0 then 1 else x)

end Sequence

