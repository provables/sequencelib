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
# A268644 sequence 
-/


namespace Sequence

@[OEIS := A268644, offset := 0, derive := true, maxIndex := 41]
def A268644 (x : ℕ) : ℤ :=
  ((((loop (λ (x _y : ℤ) ↦ (x - 1) + x) 2 x * x) - 2) * x) - 1)

end Sequence

