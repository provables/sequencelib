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
# A107659 sequence 
-/


namespace Sequence

@[OEIS := A107659, offset := 0, derive := true, maxIndex := 30]
def A107659 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x + loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x _y : ℤ) ↦ x) y 1 1) + x) x 1

end Sequence

