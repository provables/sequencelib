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
# A131670 sequence 
-/


namespace Sequence

@[OEIS := A131670, offset := 0, derive := true, maxIndex := 100]
def A131670 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ comprN (λ (_x : ℤ) ↦ 0) x - y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

