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
# A006269 sequence 
-/


namespace Sequence

@[OEIS := A006269, offset := 0, derive := true, maxIndex := 5]
def A006269 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ ((2 + (x * x)) * x) + x) x (1 + 4)

end Sequence

