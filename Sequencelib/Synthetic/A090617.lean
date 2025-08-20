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
# A090617 sequence 
-/


namespace Sequence

@[OEIS := A090617, offset := 0, derive := true, maxIndex := 80]
def A090617 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y : ℤ) ↦ x + y) (λ (_x y : ℤ) ↦ y / 2) x 0 x - x) / 3)

end Sequence

