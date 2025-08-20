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
# A267034 sequence 
-/


namespace Sequence

@[OEIS := A267034, offset := 0, derive := true, maxIndex := 100]
def A267034 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ (y / (1 + (x * x))) + x) x 0 + 1) % 2)

end Sequence

