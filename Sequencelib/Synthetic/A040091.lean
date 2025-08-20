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
# A040091 sequence 
-/


namespace Sequence

@[OEIS := A040091, offset := 0, derive := true, maxIndex := 54]
def A040091 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + 4) * (2 + loop (λ (x _y : ℤ) ↦ if x ≤ 0 then 2 else 0) x x))

end Sequence

