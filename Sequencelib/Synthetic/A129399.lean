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
# A129399 sequence 
-/


namespace Sequence

@[OEIS := A129399, offset := 0, derive := true, maxIndex := 4]
def A129399 (x : ℕ) : ℤ :=
  (((loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x) x 0 (1 + x) * 2) * 2) + 1)

end Sequence

