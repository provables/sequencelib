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
# A136308 sequence 
-/


namespace Sequence

@[OEIS := A136308, offset := 0, derive := true, maxIndex := 7]
def A136308 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 + loop (λ (x _y : ℤ) ↦ (x + x) + x) 2 x) * x) x 1

end Sequence

