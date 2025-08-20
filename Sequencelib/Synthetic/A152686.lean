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
# A152686 sequence 
-/


namespace Sequence

@[OEIS := A152686, offset := 0, derive := true, maxIndex := 10]
def A152686 (x : ℕ) : ℕ :=
  Int.toNat <|
    loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) y 0 1 * x) y x) x 1

end Sequence

