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
# A152011 sequence 
-/


namespace Sequence

@[OEIS := A152011, offset := 0, derive := true, maxIndex := 100]
def A152011 (x : ℕ) : ℕ :=
  Int.toNat <| ((x % 2) + loop (λ (x _y : ℤ) ↦ 1 + ((x + x) + x)) (x - 1) 1)

end Sequence

