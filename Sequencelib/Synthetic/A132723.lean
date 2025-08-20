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
# A132723 sequence 
-/


namespace Sequence

@[OEIS := A132723, offset := 0, derive := true, maxIndex := 100]
def A132723 (x : ℕ) : ℤ :=
  (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x y : ℤ) ↦ y - x) x 2 2 + loop (λ (_x _y : ℤ) ↦ 0) x 1)

end Sequence

