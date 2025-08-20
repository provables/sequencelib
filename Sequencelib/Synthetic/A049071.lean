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
# A049071 sequence 
-/


namespace Sequence

@[OEIS := A049071, offset := 0, derive := true, maxIndex := 80]
def A049071 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ 1 + (y - x)) (λ (_x _y : ℤ) ↦ 0) x 0 2

end Sequence

