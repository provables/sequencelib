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
# A011875 sequence 
-/


namespace Sequence

@[OEIS := A011875, offset := 0, derive := true, maxIndex := 69]
def A011875 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) / (2 + loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) 2 2))

end Sequence

