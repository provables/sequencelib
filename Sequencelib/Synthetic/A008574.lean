/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008574 sequence 
-/


namespace Sequence

@[OEIS := A008574, offset := 0, derive := true, maxIndex := 100]
def A008574 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else 2 * (x + x)

end Sequence

