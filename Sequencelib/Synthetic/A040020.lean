/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A040020 sequence 
-/


namespace Sequence

@[OEIS := A040020, offset := 0, derive := true, maxIndex := 100]
def A040020 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + 4) * if x ≤ 0 then 1 else 2)

end Sequence

