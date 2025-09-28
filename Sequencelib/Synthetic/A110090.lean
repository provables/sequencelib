/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110090 sequence 
-/


namespace Sequence

@[OEIS := A110090, offset := 0, derive := true, maxIndex := 100]
def A110090 (x : ℕ) : ℕ :=
  Int.toNat <| if ((x % 3) % 2) ≤ 0 then x - (x / 3) else 1

end Sequence

