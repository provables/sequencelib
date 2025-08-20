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
# A022962 sequence 
-/


namespace Sequence

@[OEIS := A022962, offset := 0, derive := true, maxIndex := 60]
def A022962 (x : ℕ) : ℤ :=
  (2 + (2 + (2 - x)))

end Sequence

