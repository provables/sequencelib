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
# A198771 sequence 
-/


namespace Sequence

@[OEIS := A198771, offset := 0, derive := true, maxIndex := 100]
def A198771 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + loop (λ (x _y : ℤ) ↦ (1 + 4) * (2 + x)) x 3)

end Sequence

