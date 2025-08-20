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
# A049347 sequence 
-/


namespace Sequence

@[OEIS := A049347, offset := 0, derive := true, maxIndex := 10]
def A049347 (x : ℕ) : ℤ :=
  (1 + (x % (-3)))

end Sequence

