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
# A057682 sequence 
-/


namespace Sequence

@[OEIS := A057682, offset := 0, derive := true, maxIndex := 100]
def A057682 (x : ℕ) : ℤ :=
  (loop2 (λ (x y : ℤ) ↦ (x + x) + y) (λ (x y : ℤ) ↦ y - x) x 1 1 / 3)

end Sequence

