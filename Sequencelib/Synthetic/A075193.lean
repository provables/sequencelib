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
# A075193 sequence 
-/


namespace Sequence

@[OEIS := A075193, offset := 0, derive := true, maxIndex := 100]
def A075193 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ y - x) (λ (x _y : ℤ) ↦ x) x 1 (-2)

end Sequence

