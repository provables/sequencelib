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
# A084178 sequence 
-/


namespace Sequence

@[OEIS := A084178, offset := 0, derive := true, maxIndex := 35]
def A084178 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) y 1 0 - x) - x) x 0

end Sequence

