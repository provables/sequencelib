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
# A046882 sequence 
-/


namespace Sequence

@[OEIS := A046882, offset := 0, derive := true, maxIndex := 5]
def A046882 (x : ℕ) : ℕ :=
  Int.toNat <|
    loop (λ (x _y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x 1 x) 1 (loop (λ (x y : ℤ) ↦ x * y) x 1)

end Sequence

