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
# A165202 sequence 
-/


namespace Sequence

@[OEIS := A165202, offset := 0, derive := true, maxIndex := 100]
def A165202 (x : ℕ) : ℤ :=
  loop2 (λ (_x y : ℤ) ↦ 2 + y) (λ (x y : ℤ) ↦ y - x) x 1 x

end Sequence

