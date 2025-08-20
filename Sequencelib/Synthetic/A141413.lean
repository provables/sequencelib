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
# A141413 sequence 
-/


namespace Sequence

@[OEIS := A141413, offset := 0, derive := true, maxIndex := 100]
def A141413 (x : ℕ) : ℤ :=
  (loop2 (λ (x y : ℤ) ↦ y - x) (λ (x y : ℤ) ↦ 2 * (x - y)) x 1 0 / 3)

end Sequence

