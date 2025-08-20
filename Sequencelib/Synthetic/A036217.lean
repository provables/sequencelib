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
# A036217 sequence 
-/


namespace Sequence

@[OEIS := A036217, offset := 0, derive := true, maxIndex := 100]
def A036217 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 3 * (((2 * (x + x)) / y) + x)) x 1

end Sequence

