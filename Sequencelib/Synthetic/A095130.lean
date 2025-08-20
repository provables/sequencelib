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
# A095130 sequence 
-/


namespace Sequence

@[OEIS := A095130, offset := 0, derive := true, maxIndex := 100]
def A095130 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (_x : ℤ) ↦ 0) (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ y - x) x 0 1)

end Sequence

