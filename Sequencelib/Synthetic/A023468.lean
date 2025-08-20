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
# A023468 sequence 
-/


namespace Sequence

@[OEIS := A023468, offset := 0, derive := true, maxIndex := 61]
def A023468 (x : ℕ) : ℤ :=
  (x - loop (λ (x _y : ℤ) ↦ 1 + (x * x)) 2 2)

end Sequence

