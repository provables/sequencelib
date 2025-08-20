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
# A099485 sequence 
-/


namespace Sequence

@[OEIS := A099485, offset := 0, derive := true, maxIndex := 50]
def A099485 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (x + x) 2 2) / 3)

end Sequence

