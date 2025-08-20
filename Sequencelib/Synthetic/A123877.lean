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
# A123877 sequence 
-/


namespace Sequence

@[OEIS := A123877, offset := 0, derive := true, maxIndex := 100]
def A123877 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ -(x + y)) (λ (x y : ℤ) ↦ (x - y) - y) x 1 0

end Sequence

