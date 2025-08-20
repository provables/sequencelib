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
# A319196 sequence 
-/


namespace Sequence

@[OEIS := A319196, offset := 0, derive := true, maxIndex := 31]
def A319196 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ y - x) (λ (x y : ℤ) ↦ ((x + y) + y) + y) x 1 0

end Sequence

