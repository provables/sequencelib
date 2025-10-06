/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097325 sequence 
-/


namespace Sequence

@[OEIS := A097325, offset := 0, derive := true, maxIndex := 10]
def A097325 (x : ℕ) : ℕ :=
  Int.toNat <| (if (x % 3) ≤ 0 then x else 1 % 2)

end Sequence

