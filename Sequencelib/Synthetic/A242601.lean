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
# A242601 sequence 
-/


namespace Sequence

@[OEIS := A242601, offset := 0, derive := true, maxIndex := 82]
def A242601 (x : ℕ) : ℤ :=
  loop (λ (x y : ℤ) ↦ (y % 2) - x) (x / 2) 0

end Sequence

