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
# A191901 sequence 
-/


namespace Sequence

@[OEIS := A191901, offset := 0, derive := true, maxIndex := 31]
def A191901 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (x * x) * x) 1 (1 + ((2 + x) * x)) / 2)

end Sequence

