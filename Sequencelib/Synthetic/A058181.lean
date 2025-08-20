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
# A058181 sequence 
-/


namespace Sequence

@[OEIS := A058181, offset := 0, derive := true, maxIndex := 10]
def A058181 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ (x * x) - y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

