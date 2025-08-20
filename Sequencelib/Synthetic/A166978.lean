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
# A166978 sequence 
-/


namespace Sequence

@[OEIS := A166978, offset := 0, derive := true, maxIndex := 100]
def A166978 (x : ℕ) : ℤ :=
  ((2 * (2 * (2 * (x % 2)))) - loop (λ (x _y : ℤ) ↦ x + x) x 1)

end Sequence

