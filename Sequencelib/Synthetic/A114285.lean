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
# A114285 sequence 
-/


namespace Sequence

@[OEIS := A114285, offset := 0, derive := true, maxIndex := 63]
def A114285 (x : ℕ) : ℤ :=
  (loop (λ (x _y : ℤ) ↦ -x) x 1 - x)

end Sequence

