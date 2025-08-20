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
# A131738 sequence 
-/


namespace Sequence

@[OEIS := A131738, offset := 0, derive := true, maxIndex := 100]
def A131738 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ -(x + y)) (λ (_x _y : ℤ) ↦ 0) x x 1

end Sequence

