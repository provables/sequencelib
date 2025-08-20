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
# A087960 sequence 
-/


namespace Sequence

@[OEIS := A087960, offset := 0, derive := true, maxIndex := 100]
def A087960 (x : ℕ) : ℤ :=
  loop2 (λ (_x y : ℤ) ↦ -y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

