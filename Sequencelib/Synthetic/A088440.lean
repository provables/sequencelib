/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088440 sequence 
-/


namespace Sequence

@[OEIS := A088440, offset := 0, derive := true, maxIndex := 100]
def A088440 (x : ℕ) : ℕ :=
  Int.toNat <| if (x % 4) ≤ 0 then x else 1

end Sequence

