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
# A267942 sequence 
-/


namespace Sequence

@[OEIS := A267942, offset := 0, derive := true, maxIndex := 57]
def A267942 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x * x) 1 (loop (λ (x y : ℤ) ↦ 1 - (x + y)) x 1) + 2)

end Sequence

