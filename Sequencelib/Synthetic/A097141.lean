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
# A097141 sequence 
-/


namespace Sequence

@[OEIS := A097141, offset := 0, derive := true, maxIndex := 100]
def A097141 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ y - x) (λ (_x _y : ℤ) ↦ 0) x x 2

end Sequence

