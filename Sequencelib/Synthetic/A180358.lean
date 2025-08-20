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
# A180358 sequence 
-/


namespace Sequence

@[OEIS := A180358, offset := 0, derive := true, maxIndex := 23]
def A180358 (x : ℕ) : ℕ :=
  Int.toNat <| ((4 * (x * 2)) + loop (λ (x _y : ℤ) ↦ x * x) 3 x)

end Sequence

