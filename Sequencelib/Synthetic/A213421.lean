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
# A213421 sequence 
-/


namespace Sequence

@[OEIS := A213421, offset := 0, derive := true, maxIndex := 100]
def A213421 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ (2 * (x + y)) + y) (λ (x y : ℤ) ↦ (y - x) + y) x 1 0

end Sequence

