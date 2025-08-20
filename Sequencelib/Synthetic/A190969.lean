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
# A190969 sequence 
-/


namespace Sequence

@[OEIS := A190969, offset := 0, derive := true, maxIndex := 100]
def A190969 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ ((x + x) + x) + y) (λ (x y : ℤ) ↦ (y - x) * 2) x 0 1

end Sequence

