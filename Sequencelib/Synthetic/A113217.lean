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
# A113217 sequence 
-/


namespace Sequence

@[OEIS := A113217, offset := 0, derive := true, maxIndex := 100]
def A113217 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ 1 + (x % (1 + (2 * 4)))) x 0 % 2)

end Sequence

