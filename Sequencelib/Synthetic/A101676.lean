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
# A101676 sequence 
-/


namespace Sequence

@[OEIS := A101676, offset := 0, derive := true, maxIndex := 100]
def A101676 (x : ℕ) : ℤ :=
  (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ y - x) x 1 0 - (x % 3) / 2)

end Sequence

