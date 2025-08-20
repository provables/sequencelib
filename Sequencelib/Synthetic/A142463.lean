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
# A142463 sequence 
-/


namespace Sequence

@[OEIS := A142463, offset := 0, derive := true, maxIndex := 100]
def A142463 (x : ℕ) : ℤ :=
  ((2 * ((x * x) + x)) - 1)

end Sequence

