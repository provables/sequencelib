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
# A051633 sequence 
-/


namespace Sequence

@[OEIS := A051633, offset := 0, derive := true, maxIndex := 100]
def A051633 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + loop (λ (x _y : ℤ) ↦ 2 * (2 + x)) x 1)

end Sequence

