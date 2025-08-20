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
# A126719 sequence 
-/


namespace Sequence

@[OEIS := A126719, offset := 0, derive := true, maxIndex := 100]
def A126719 (x : ℕ) : ℤ :=
  (1 + ((loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 2 - x) * (2 + x)))

end Sequence

