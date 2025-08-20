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
# A245804 sequence 
-/


namespace Sequence

@[OEIS := A245804, offset := 0, derive := true, maxIndex := 100]
def A245804 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (_x y : ℤ) ↦ (y + y) + y) x (1 - 2) 2

end Sequence

