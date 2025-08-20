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
# A077874 sequence 
-/


namespace Sequence

@[OEIS := A077874, offset := 0, derive := true, maxIndex := 47]
def A077874 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 - (x + x)) (y / 2) 1 + x) x 1

end Sequence

