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
# A096019 sequence 
-/


namespace Sequence

@[OEIS := A096019, offset := 0, derive := true, maxIndex := 26]
def A096019 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 - (x % 2)) + loop (λ (x _y : ℤ) ↦ 1 + ((x + x) + x)) x 2)

end Sequence

