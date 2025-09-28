/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167817 sequence 
-/


namespace Sequence

@[OEIS := A167817, offset := 0, derive := true, maxIndex := 100]
def A167817 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + if (x % 4) ≤ 0 then 0 else 2)

end Sequence

