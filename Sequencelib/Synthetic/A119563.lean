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
# A119563 sequence 
-/


namespace Sequence

@[OEIS := A119563, offset := 0, derive := true, maxIndex := 9]
def A119563 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x + x) x 1 - 1) + loop (λ (x _y : ℤ) ↦ x * x) x 2)

end Sequence

