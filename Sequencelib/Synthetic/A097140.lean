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
# A097140 sequence 
-/


namespace Sequence

@[OEIS := A097140, offset := 0, derive := true, maxIndex := 100]
def A097140 (x : ℕ) : ℤ :=
  loop (λ (x _y : ℤ) ↦ 1 - x) x (x / 2)

end Sequence

