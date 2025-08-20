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
# A195161 sequence 
-/


namespace Sequence

@[OEIS := A195161, offset := 0, derive := true, maxIndex := 100]
def A195161 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + loop (λ (x _y : ℤ) ↦ 1 - x) x 2) * x)

end Sequence

