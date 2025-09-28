/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133265 sequence 
-/


namespace Sequence

@[OEIS := A133265, offset := 0, derive := true, maxIndex := 100]
def A133265 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + if (x % 2) ≤ 0 then 1 else x)

end Sequence

