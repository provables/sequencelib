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
# A253209 sequence 
-/


namespace Sequence

@[OEIS := A253209, offset := 0, derive := true, maxIndex := 23]
def A253209 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 + (2 + loop (λ (x _y : ℤ) ↦ 2 * ((x + x) + x)) x 1)))

end Sequence

