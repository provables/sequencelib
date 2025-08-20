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
# A152163 sequence 
-/


namespace Sequence

@[OEIS := A152163, offset := 0, derive := true, maxIndex := 100]
def A152163 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 1 (-2)

end Sequence

