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
# A319621 sequence 
-/


namespace Sequence

@[OEIS := A319621, offset := 0, derive := true, maxIndex := 6]
def A319621 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (1 + y) * (x * y)) (x - 2) 1 / 2) + 1)

end Sequence

